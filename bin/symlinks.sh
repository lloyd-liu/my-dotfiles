#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the ~/
dotfiles directory to any desired dotfiles in ~/
############################

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=" amethyst atom bashrc bash_profile config hushlogin profile pentadactylrc qutebrowser reminders
tmux.conf vim vimrc xinitrc Xdefaults Xmodmap "    # list of files/folders to symlink in homedir

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
      echo "Creating symlink to $file in home directory."
          ln -s $dir/$file ~/.$file
        done

        # export reminders
        ln -s ~/Documents/Reminders.md ~/.reminders

        echo "Linking karabiner keybindings"
        /Applications/Karabiner.app/Contents/Library/bin/karabiner export > ~/dotfiles/karabiner-import.sh

        echo "All done!"

done
