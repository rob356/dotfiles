#!/bin/bash
echo Creating Symlinks...
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
echo Installing packages...
packages="zsh vim tmux zsh-syntax-highlighting vim-airline-git ttf-powerline-fonts-git tmux-mem-cpu-load-git"
if hash yaourt 2>/dev/null; then
    yaourt --noconfirm -S $packages
elif has pacaur 2>/dev/null; then
    pacaur --noconfirm -S $packages
else
    echo AUR wrapper needed, istall yaourt or pacaur first
fi
