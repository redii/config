#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install additional softwarei
brew install git
brew install node
brew install python@3.7
brew install docker
brew install docker-compose

# install cask software
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brackets
brew install --cask visual-studio-code
brew install --cask hyper
brew install --cask docker
brew install --cask insomnia
brew install --cask cyberduck
brew install --cask keepingyouawake
brew install --cask spotify
