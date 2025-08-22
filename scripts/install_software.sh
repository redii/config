#!/bin/bash

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install cli software
brew install git
brew install zsh
brew install zip
brew install grep
brew install docker
brew install docker-compose
brew install pure                         # zsh prompt
brew install nvm                          # manage node versions
brew install hugo                         # hugo SSG cli
brew install youtube-dl                   # download videos
brew install macfuse                      # third-party filesystem support
brew install rclone                       # mount and sync data 
brew install ffmpeg               	      # audio and video editing

# install cask software
brew install --cask firefox
brew install --cask firefox@developer-edition
brew install --cask google-chrome
brew install --cask spotify
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask raycast               # advanced spotlight search
brew install --cask bartender             # hide items from menubar
brew install --cask unnaturalscrollwheels # fix mouse and trackpad scrolling
brew install --cask command-x             # cut files in finder
brew install --cask aldente               # prevent overcharging
brew install --cask tailscale             # networking made easy
brew install --cask tunnelblick           # vpn client
brew install --cask powershell            # powershell for mac
brew install --cask cyberduck             # ftp client
brew install --cask notunes               # prevent iTunes/Apple Music
brew install --cask bruno                 # http/api client

# install cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono
brew install --cask poppins

# install node using nvm
nvm install --lts                         # install latest node lts

# install node modules
npm install --global npx
npm install --global nodemon
npm install --global markdown-pdf
npm install --global eslint
