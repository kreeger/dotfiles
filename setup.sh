#!/usr/bin/env bash

# Setup script.
if [[ ! -d "$HOME/.zsh" ]]; then
    git clone --recurse-submodules https://github.com/kreeger/zshrc.git $HOME/.zsh
fi

if [[ ! -a "$HOME/.zshrc" ]]; then
    ln -sfv $HOME/.zsh/zshrc $HOME/.zshrc
fi

# Link dotfiles.
declare -a dotfiles=("gemrc" "gitconfig" "gitignore.global")

for file in "${dotfiles[@]}"
do
    if [[ ! -a "$HOME/.$file" ]]; then
        ln -sfv ./.$file $HOME/.$file
    fi
done
