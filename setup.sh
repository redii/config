#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

DOTFILES=(
  .zshrc
  .gitconfig
  .gitignore_global
  .vimrc
  .prettierrc
  .aerospace.toml
)

for file in "${DOTFILES[@]}"; do
  src="$DOTFILES_DIR/$file"
  dest="$HOME/$file"

  if [ ! -f "$src" ]; then
    echo "SKIP  $file (source not found)"
    continue
  fi

  if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
    echo "OK    $file (already linked)"
    continue
  fi

  if [ -e "$dest" ]; then
    mv "$dest" "$dest.bak"
    echo "BACK  $file (existing file moved to $file.bak)"
  fi

  ln -s "$src" "$dest"
  echo "LINK  $file -> $src"
done

# Install custom keyboard layout (German with @ on alt+q instead of alt+l,
# so alt+l is free for AeroSpace). Select it under
# System Settings -> Keyboard -> Input Sources -> Others.
KEYLAYOUT="GermanAtQ.keylayout"
KEYLAYOUT_SRC="$DOTFILES_DIR/keyboard/$KEYLAYOUT"
KEYLAYOUT_DEST="$HOME/Library/Keyboard Layouts/$KEYLAYOUT"
if cmp -s "$KEYLAYOUT_SRC" "$KEYLAYOUT_DEST"; then
  echo "OK    $KEYLAYOUT (already installed)"
else
  mkdir -p "$HOME/Library/Keyboard Layouts"
  cp "$KEYLAYOUT_SRC" "$KEYLAYOUT_DEST"
  echo "COPY  $KEYLAYOUT -> ~/Library/Keyboard Layouts/"
fi

# Set zsh as default shell if not already
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
  echo "Shell changed to zsh"
else
  echo "OK    zsh is already the default shell"
fi
