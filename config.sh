#!/bin/bash

DOTFILES=(.zshrc .gitconfig .eslintrc.json .stylelintrc .prettierrc)

# Remove old dotfiles and replace them
for dotfile in $(echo ${DOTFILES[*]});
do
    rm ~/$(echo $dotfile)
    ln -s ~/.dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
