#!/bin/sh

echo "Installing the dotfiles"
git clone git://github.com/wgriffioen/dotfiles.git ~/.dotfiles

echo "Installing oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Installing rbenv"
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

echo "Installing ruby-build as an rbenv plugin"
mkdir -p ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "Installing the vim configuration"
# git clone git://github.com/wgriffione/vim-files.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

echo "Almost done. Symlinking all the other config files"
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux ~/.tmux.conf

echo "Finished"
