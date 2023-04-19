#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install cli software
brew install git
brew install docker
brew install docker-compose
brew install zip
brew install grep
brew install koekeishiya/formulae/yabai # tiling manager
brew install nvm                        # manage node versions
brew install macvim                     # vim for mac
brew install hugo                       # hugo SSG cli

# install cask software
brew install --cask google-chrome
brew install --cask firefox
brew install --cask spotify
brew install --cask google-drive
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask alfred              # advanced spotlight search
brew install --cask hiddenbar           # hide icons from menubar
brew install --cask aldente             # prevent overcharging
brew install --cask tailscale           # networking made easy
brew install --cask tunnelblick         # vpn client
brew install --cask mullvadvpn          # vpn mullvad
brew install --cask vpn-by-google-one   # vpn by google
brew install --cask warp                # ai powered cli
brew install --cask macvim              # vim for mac
brew install --cask insomnia            # develop and test apis
brew install --cask cyberduck           # ftp client

# install cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono

# install node using nvm
nvm install --lts                       # install latest node lts

# install node modules
npm install --global npx
npm install --global nodemon
npm install --global markdown-pdf
npm install --global eslint
npm install --global caprover
npm install --global netlify-cli
