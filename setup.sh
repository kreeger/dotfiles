#!/usr/bin/env bash

# Setup script.
if [[ ! -d "$HOME/.zsh" ]]; then
    git clone --recurse-submodules https://github.com/kreeger/zshrc.git $HOME/.zsh
    ln -sfv $HOME/.zsh/zshrc $HOME/.zshrc
fi

# Link dotfiles.
declare -a dotfiles=("gemrc" "gitconfig" "gitignore.global")

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

for file in "${dotfiles[@]}"
do
    if [[ ! -a "$HOME/.$file" ]]; then
        ln -sfv $SCRIPTPATH/.$file $HOME/.$file
    fi
done
