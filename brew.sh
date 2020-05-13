#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget`
brew install wget

# Install other useful binaries.
brew install ssh-copy-id
brew install autojump
brew install cheat
brew install tree
brew install cloc
brew install jq

# Install the development environment
brew install go
brew install rbenv
brew install nginx
brew install postgresql

# Install tmux
brew install tmux
brew install reattach-to-user-namespace

# Install native apps
brew tap caskroom/cask
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install shadowsocksx
brew cask install cheatsheet
brew cask install virtualbox
brew cask install wireshark
brew cask install bartender
brew cask install inboard
brew cask install vagrant
brew cask install iterm2
brew cask install iina

# Remove outdated versions from the cellar.
brew cleanup
