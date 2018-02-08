# dotfiles
This is my own personal dotfile repo for setting up a new machine.

## Preparations
### 1. Install [Homebrew](http://brew.sh/)
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 2. Install [Homebrew Cask](http://caskroom.io/)
```
brew tap caskroom/cask
```

### 3. Install [Oh My Zsh](http://ohmyz.sh/)
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
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
