#!/bin/sh

echo 'Updating all dependencies'
git submodule init
git submodule update

echo 'Symlinking all the files and directories'

ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh 
ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/gitconfig ~/.gitconfig
ln -s `pwd`/gitignore ~/.gitignore
ln -s `pwd`/zshrc ~/.zshrc

echo 'Checking for rbenv installation'

if [ -d "~/.rbenv"]; then
    echo "rbenv is already installed"
else
    echo "rbenv is not installed. Let's get it:"
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
fi
