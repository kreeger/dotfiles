#/usr/bin/env bash

# Setup script.
git clone --recurse-submodules https://github.com/kreeger/zshrc.git $HOME/.zsh
ln -sfv $HOME/.zsh/zshrc $HOME/.zshrc
