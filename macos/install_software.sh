#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install cli software
brew install zsh
brew install git
brew install nvm
brew install python@3.10
brew install rust
brew install docker
brew install docker-compose
brew install koekeishiya/formulae/skhd
brew install zip

# activate brew services
brew services start skhd

# install cask software
brew install --cask alfred
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brackets
brew install --cask visual-studio-code
brew install --cask hyper
brew install --cask google-drive
brew install --cask docker
brew install --cask insomnia
brew install --cask cyberduck
brew install --cask spotify
brew install --cask hiddenbar
brew install --cask utm
brew install --cask bitwarden
brew install --cask tunnelblick
brew install --cask postico

# install cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono

# install node using nvm
nvm install --lts

# install node modules
npm install --global pure-prompt
npm install --global npx
npm install --global nodemon
npm install --global markdown-pdf
npm install --global eslint
npm install --global http-server
npm install --global caprover
