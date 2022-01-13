#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master && git submodule init && git submodule update;

function doIt() {
    ln -s -f .dotfiles/tmux/.tmux.conf ~/.tmux.conf;
    cp .dotfiles/tmux/.tmux.conf ~/.tmux.conf.local;

    rsync --exclude ".git/" \
        --exclude "tmux" \
        --exclude "oh-my-zsh" \
        --exclude "solarized" \
        --exclude ".macos" \
        --exclude ".gitignore" \
        --exclude ".gitmodules" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "brew.sh" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
    doIt;
else
    echo "This may overwrite existing files in your home directory. \nAre you sure? (y/n) : ";

    read -rs -k 1 ans;
    if [[ "${ans}" == "y" || "${ans}" == "Y" ]]; then
        doIt;
    fi;
fi;
unset doIt;
