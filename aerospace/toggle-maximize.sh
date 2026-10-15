#!/bin/bash
# Toggle maximize for the focused window (bound to alt-f in .aerospace.toml).
# Floating windows: save the current frame, then maximize via `aerospace fullscreen`;
# the next call restores the saved frame (only if the window is still maximized). Tiled windows: plain fullscreen toggle.
# Restoring uses System Events, which works because AeroSpace (the parent process)
# has Accessibility permission.
set -euo pipefail

read -r id pid layout < <(aerospace list-windows --focused --format '%{window-id} %{app-pid} %{window-layout}')

if [ "$layout" != floating ]; then
  aerospace fullscreen
  exit
fi

state_dir="${TMPDIR:-/tmp}/aerospace-maximize"
state="$state_dir/$id"
mkdir -p "$state_dir"
# Errors (e.g. a failing osascript) end up here instead of disappearing silently
exec 2>>"$state_dir/error.log"

# Ignore calls while one is still running (key repeat fires alt-f several times)
mkdir "$state_dir/lock" 2>/dev/null || exit 0
# Keep the lock briefly after finishing so repeats right behind the first press are dropped too
trap 'sleep 0.5; rmdir "$state_dir/lock"' EXIT

frame() {
  osascript -e "tell application \"System Events\" to tell (first process whose unix id is $pid) to get (position of window 1) & (size of window 1)"
}

# State file: line 1 = frame before maximizing, line 2 = maximized frame.
# Only restore if the window is still exactly maximized; otherwise (state is stale,
# or the window was moved/resized since) maximize again from the current frame.
current=$(frame)
if [ -f "$state" ] && [ "$(sed -n 2p "$state")" = "$current" ]; then
  IFS=', ' read -r x y w h < "$state"
  rm "$state"
  osascript -e "tell application \"System Events\" to tell (first process whose unix id is $pid)
    set position of window 1 to {$x, $y}
    set size of window 1 to {$w, $h}
  end tell"
else
  aerospace fullscreen on --window-id "$id"
  sleep 0.2
  printf '%s\n%s\n' "$current" "$(frame)" > "$state"
fi
