#!/bin/sh

git submodule init
git submodule update
echo ":source ~/.vim/vimrc" > ~/.vimrc
mkdir ~/.vim-undo

