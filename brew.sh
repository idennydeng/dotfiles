#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install `wget` with IRI support.
brew install wget --with-iri

# Install other useful binaries.
brew install ssh-copy-id
brew install autojump
brew install tree
brew install cloc
brew install wget

# Install the development environment
brew install go
brew install nvm
brew install rbenv
brew install postgresql
brew install nginx

# Install native apps
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install rescuetime
brew cask install cheatsheet
brew cask install cleanmymac
brew cask install wireshark
brew cask install bartender
brew cask install mplayerx
brew cask install macdown
brew cask install iterm2
brew cask install atom
brew cask install flux

# Install Quick Look plugins
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install qlimagesize
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen

# Remove outdated versions from the cellar.
brew cleanup
