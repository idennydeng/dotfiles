#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget`
brew install wget

# Install other useful binaries.
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

# Install native apps
brew tap homebrew/case
brew install visual-studio-code
brew install google-chrome
brew install cheatsheet
brew install virtualbox
brew install wireshark
brew install bartender
brew install inboard
brew install vagrant
brew install iina

# Remove outdated versions from the cellar.
brew cleanup
