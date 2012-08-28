#!/bin/bash

# Create vim-tmp for swap files
mkdir -p ~/.vim-tmp

# make symbolic links from system dotfiles to repo
REPO_DIR=`pwd`
echo "Setting $REPO_DIR/vimrc to ~/.test"
ln -nfs $REPO_DIR/vimrc ~/.vimrc
ln -fs $REPO_DIR/vim ~/.vim
ln -nfs $REPO_DIR/zshrc ~/.zshrc
ln -fs $REPO_DIR/zsh-modules ~/.zsh-modules


# copy required bins and set permissions
mkdir -p ~/bin
cp bin/* ~/bin/
chmod +x ~/bin/git-current-branch
chmod +x ~/bin/git-cwd-info 

# make terminal open zsh on bash login
HAS_ZSH=(`grep -c "zsh" ~/.bash_profile`)
if [ $HAS_ZSH -lt 1 ]; then
	# $HAS_ZSH is the number of time zsh occurs in bash_profile
	# this fails of zsh is mentioned anywhere in the comments
	echo "adding zsh to bash profile"
	echo zsh >> ~/.bash_profile
else
	echo "zsh already loaded through bash_profile"
fi

# Git Stuff
# http://news.ycombinator.com/item?id=4130494
git config --global color.ui "auto"
