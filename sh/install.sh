#!/bin/bash

# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# mkdir for nvim setting
mkdir ~/.config/nvim
# repository clone
git clone git@github.com:srttk/dotfiles.git
# change dir
cd ~/dotfiles/sh
# create symbolic link
bash link.sh
