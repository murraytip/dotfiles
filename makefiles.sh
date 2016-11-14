#!/usr/bin/env bash
##
## makefiles.sh
##
## To be run after cloning dotfiles from repo.
## Moves existing dotfiles into a hidden directory .dotfiles_old, then symlinks the new files to the proper place.

dir=~/dotfiles	#dotfiles directory
olddir=~/.dotfiles_old	#old dotfiles directory
files="$(find . -maxdepth 1 -type f  ! '(' -name 'LICENSE' -o -name '*.sh' ')'  -exec basename {} \;)"
### create .dotfiles_old

echo "Creating $olddir to backup any existing dotfiles in ~"
mkdir -p $olddir
echo "...done!"

#move any existing dotfile in homedir to dotfiles_old, then create symlinks

for file in $files; do
	echo "Moving old dotfiles from ~ to $olddir"
	mv ~/.$file ~/.dotfiles_old/
	echo "creating symlinks to $file in home directory..."
	ln -s $dir/$file ~/.$file
done
