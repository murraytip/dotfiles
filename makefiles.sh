#!/usr/bin/env bash
##
## makefiles.sh
##
## uses git to clone files from Github repo into a directory ~/dotfiles, moves existing files into a hidden directory .dotfiles_old, then symlinks the new files to the proper place.

dir=~/dotfiles	#dotfiles directory
olddir=~/.dotfiles_old	#old dotfiles directory

### create .dotfiles_old

echo "Creating $olddir to backup any existing dotfiles in ~"
mkdir -p $olddir
echo "...done!"

#clone my dotfiles from the Github repo

echo "cloning files from Github"
git clone 

