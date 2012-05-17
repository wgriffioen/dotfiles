#!/bin/sh

echo 'Removing all symlinks'
rm ~/.gitconfig ~/.gitignore ~/.zshrc ~/.oh-my-zsh ~/.vim ~/.vimrc ~/.tmux.conf

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
ln -s `pwd`/tmux ~/.tmux.conf

echo 'Checking for rbenv installation'

rbenvdirectory="~/.rbenv"

if [ -d $rbenvdirectory ] ; then
    echo "rbenv is already installed"
else
    echo "rbenv is not installed. Let's get it:"
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
fi
