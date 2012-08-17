#!/bin/bash

# TODO: initialize git sub-modules and test out plugins


# make symbolic link for rcs
CURR_DIR=`pwd`
echo "Setting $CURR_DIR/vimrc to ~/.test"
ln -nfs $CURR_DIR/vimrc ~/.vimrc
ln -fs $CURR_DIR/vim ~/.vim

echo `pwd`/vim
# make terminal open zsh on login
HAS_ZSH=(`grep -c "zsh" ~/.bash_profile`)
if [ $HAS_ZSH -lt 1 ]; then
	# $HAS_ZSH is the number of time zsh occurs in bash_profile
	# this fails of zsh is mentioned anywhere in the comments
	echo "adding zsh to bash profile"
	echo zsh >> ~/.bash_profile
else
	echo "zsh already loaded through bash_profile"
fi

# copy required bins and set permissions
# mkdir -p ~/bin
# cp bin/* ~/bin/
# chmod +x ~/bin/git-current-branch
# chmod +x ~/bin/git-cwd-info 
