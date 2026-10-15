# 👨‍💻 config

A repository for dotfiles, configs and scripts.

## Setup

```sh
./software.sh   # install homebrew, cli tools, cask apps, fonts and node (nvm)
./setup.sh      # symlink dotfiles, install keyboard layout, set zsh as default shell
```

## Contents

- **Dotfiles** (`.zshrc`, `.gitconfig`, `.vimrc`, `.prettierrc`, `.aerospace.toml`, …) — symlinked into `$HOME` by `setup.sh`
- **`keyboard/GermanAtQ.keylayout`** — German layout with `@` on `alt+q` instead of `alt+l`, so `alt+l` is free for AeroSpace hjkl navigation. After running `setup.sh`, select it once under System Settings → Keyboard → Input Sources → Others
- **`iterm/`** — iTerm2 profile, colors, keymap and icon

## AeroSpace

Window manager config (`.aerospace.toml`), used mainly for workspaces: all windows
float by default, workspaces on `alt+1-4/d/w`, `alt+f` toggles maximize
(`aerospace/toggle-maximize.sh`), vim-style hjkl bindings for tiled windows and [JankyBorders](https://github.com/FelixKratz/JankyBorders)
highlighting the focused window.
