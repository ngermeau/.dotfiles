DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DESTINATION_DIR=..

# vim 
mkdir -p $DESTINATION_DIR/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $DESTINATION_DIR/.vim/bundle/Vundle.vim
ln -sf $DOTFILES_DIR/vim/.vimrc $DESTINATION_DIR/.vimrc
ln -sf $DOTFILES_DIR/vim/.vim $DESTINATION_DIR/.vim

#git 
ln -sf $DOTFILES_DIR/git/.gitconfig $DESTINATION_DIR/.gitconfig

#zsh
ln -sf $DOTFILES_DIR/zsh/.zshrc $DESTINATION_DIR/.zshrc

#tmux
ln -sf $DOTFILES_DIR/tmux/.tmux.conf $DESTINATION_DIR/.tmux.conf

#xmodmap macbook pro
ln -sf $DOTFILES_DIR/xmodmap/.Xmodmap $DESTINATION_DIR/.Xmodmap
