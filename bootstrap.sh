#!/bin/sh

echo 'Updating all dependencies'
git submodule init
git submodule update

echo 'Symlinking all the files and directories'

ln -s oh-my-zsh ~/.oh-my-zsh 
ln -s vim ~/.vim
ln -s vimrc ~/.vimrc
ln -s gitconfig ~/.gitconfig
ln -s gitignore ~/.gitignore
ln -s zshrc ~/.zshrc

echo 'Checking for rbenv installation'

if [ -d "~/.rbenv"]; then
    echo "rbenv is already installed"
else
    echo "rbenv is not installed. Let's get it:"
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
fi
