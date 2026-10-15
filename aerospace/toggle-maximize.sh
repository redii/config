#!/bin/bash
# Toggle maximize for the focused window (bound to alt-f in .aerospace.toml).
# Floating windows: save the current frame, then maximize via `aerospace fullscreen`;
# the next call restores the saved frame. Tiled windows: plain fullscreen toggle.
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

if [ -f "$state" ]; then
  IFS=', ' read -r x y w h < "$state"
  rm "$state"
  osascript -e "tell application \"System Events\" to tell (first process whose unix id is $pid)
    set position of window 1 to {$x, $y}
    set size of window 1 to {$w, $h}
  end tell"
else
  frame=$(osascript -e "tell application \"System Events\" to tell (first process whose unix id is $pid) to get (position of window 1) & (size of window 1)")
  echo "$frame" > "$state"
  aerospace fullscreen on --window-id "$id"
fi
