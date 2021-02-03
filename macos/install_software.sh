#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install additional software
brew install zsh
brew install starship
brew install git
brew install node
brew install deno
brew install python@3.7
brew install rust
brew install docker
brew install docker-compose
brew install koekeishiya/formulae/skhd

# activate brew services
brew services start skhd

# install cask software
brew install --cask alfred
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brackets
brew install --cask visual-studio-code
brew install --cask hyper
brew install --cask google-photos-backup-and-sync
brew install --cask adobe-creative-cloud
brew install --cask docker
brew install --cask insomnia
brew install --cask cyberduck
brew install --cask keepingyouawake
brew install --cask spotify

# install cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# install node modules
npm i -g nodemon
npm i -g markdown-pdf
