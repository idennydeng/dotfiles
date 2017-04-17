#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".macos" \
        --exclude ".DS_Store" \
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