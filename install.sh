set -e

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.bashrc" ~
ln -sfv "$DOTFILES_DIR/.bash_powerline.sh" ~
ln -sfv "$DOTFILES_DIR/.bash_aliases" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.taskrc" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~
mkdir --parents ~/.lein
ln -sfv "$DOTFILES_DIR/profiles.clj" ~/.lein/

mkdir --parents ~/.vim/colors/
ln -sfv "$DOTFILES_DIR/mustang.vim" ~/.vim/colors/
mkdir --parents ~/.vim/autoload/
ln -sfv "$DOTFILES_DIR/pathogen.vim" ~/.vim/autoload/
mkdir --parents ~/.vim/bundle/

mkdir --parents ~/.config/i3
ln -sfv "$DOTFILES_DIR/config.i3" ~/.config/i3/config

mkdir --parents ~/.config/i3status
ln -sfv "$DOTFILES_DIR/config.i3status" ~/.config/i3status/config
