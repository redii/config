#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

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

# Set zsh as default shell if not already
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
  echo "Shell changed to zsh"
else
  echo "OK    zsh is already the default shell"
fi
