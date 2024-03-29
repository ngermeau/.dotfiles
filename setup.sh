#!/bin/bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#alacritty
ln -sf $DOTFILES_DIR/alacritty/.alacritty.yml ~/.alacritty.yml

# zsh 
ln -sf $DOTFILES_DIR/zsh/.zshrc ~/.zshrc

#tmux
ln -sf $DOTFILES_DIR/tmux/.tmux.conf ~/.tmux.conf

# astroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
mkdir ~/.config/nvim/lua/user/
ln -sf $DOTFILES_DIR/nvim/init.lua ~/.config/nvim/user/init.lua

#git 
ln -sf $DOTFILES_DIR/git/.gitconfig ~/.gitconfig


