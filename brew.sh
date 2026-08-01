#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils
brew install findutils
brew install moreutils
brew install gawk
brew install gnu-indent
brew install gnu-which
brew install gnu-sed
brew install gnu-tar
brew install diffutils
brew install binutils
brew install gnutls
brew install ed
brew install grep
brew install gzip
brew install screen
brew install watch
brew install wdiff
brew install wget
brew install less
brew install unzip
brew install xz

# Install other useful binaries.
brew install autojump
brew install cheat
brew install tree
brew install cloc
brew install jq

# Install the development environment
brew install go

# Install tmux
brew install tmux

# Install native apps
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask cheatsheet
brew install --cask wireshark
brew install --cask obsidian
brew install --cask raycast
brew install --cask thaw

# Remove outdated versions from the cellar.
brew cleanup
