# dotfiles
This is my own personal dotfile repo for setting up a new machine.

## Preparations
### 1. Install [Homebrew](http://brew.sh/)
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 2. Install [Cask](http://caskroom.io/)
```
brew install caskroom/cask/brew-cask
```

### 3. Install [Oh My Zsh](http://ohmyz.sh/)
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

## Installation
### 1. Using Git and the bootstrap script
```
git clone https://github.com/happyaxu/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && source bootstrap.sh
```

### 2. Install Homebrew formulae
```
cd ~/.dotfiles && ./brew.sh
```

### 3. Change shell to ZSH
```
chsh -s /bin/zsh
```