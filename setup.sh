#!/bin/bash
echo Creating Symlinks...
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
echo Installing packages...
sudo yaourt --noconfirm -S zsh vim tmux zsh-syntax-highlighting vim-airline-git ttf-powerline-fonts-git tmuxline-git tmuxline-git
