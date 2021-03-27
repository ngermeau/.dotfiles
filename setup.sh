DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DESTINATION_DIR=..

# vim 
ln -sf $DOTFILES_DIR/vim/.vimrc $DESTINATION_DIR/.vimrc
ln -sf $DOTFILES_DIR/vim/.vim $DESTINATION_DIR/.vim

#git 
ln -sf $DOTFILES_DIR/git/.gitconfig $DESTINATION_DIR/.gitconfig

#tmux
ln -sf $DOTFILES_DIR/tmux/.tmux.conf $DESTINATION_DIR/.tmux.conf
