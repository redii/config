#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install cli software
brew install git
brew install nvm
brew install python@3.10
brew install docker
brew install docker-compose
brew install zip
brew install grep
brew install hugo

# install cask software
brew install --cask alfred
brew install --cask google-chrome
brew install --cask firefox
brew install --cask spotify
brew install --cask google-drive
brew install --cask hiddenbar
brew install --cask aldente
brew install --cask tailscale
brew install --cask tunnelblick
brew install --cask warp
brew install --cask brackets
brew install --cask visual-studio-code
brew install --cask jetbrains-toolbox
brew install --cask insomnia
brew install --cask docker
brew install --cask cyberduck

# install cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono

# install node using nvm
nvm install --lts

# install node modules
npm install --global npx
npm install --global nodemon
npm install --global markdown-pdf
npm install --global eslint
npm install --global caprover
