#!/bin/bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bash
ln -sf $DOTFILES_DIR/zsh/.zshrc ~/.zshrc

# vim 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $DOTFILES_DIR/vim/.vimrc ~/.vimrc

#git 
ln -sf $DOTFILES_DIR/git/.gitconfig ~/.gitconfig

#tmux
ln -sf $DOTFILES_DIR/tmux/.tmux.conf ~/.tmux.conf

#alacritty
ln -sf $DOTFILES_DIR/alacritty/.alacritty.yml ~/.alacritty.yml
