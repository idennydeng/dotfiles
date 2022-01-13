# dotfiles

This is my own personal dotfile repo for setting up a new machine.

## Preparations

### 1. Install [Homebrew](http://brew.sh/)

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Installation

### 1. Change shell to ZSH

```
chsh -s /bin/zsh
```

### 2. Using Git and the bootstrap script

```
git clone https://github.com/idennydeng/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./bootstrap.sh
```

### 3. Sensible macOS defaults

```
cd ~/.dotfiles && ./.macos
```

### 4. Install Homebrew formulae

```
cd ~/.dotfiles && ./brew.sh
```
