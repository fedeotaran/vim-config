#!/usr/bin/env bash
# Script to automatically link a directory of config
# files as .files on a user's home directory
# it's meant to ease the mainainance of a centralized repo of configurations

# COLOURS
G="\033[0;32m"
R="\033[0;31m"
B="\033[0;34m"
Y="\033[0;33m"
RESET="\033[0m"

# Files to create symbolics links
ln_files=("vim" "vimrc" "vimrc.plugins")
bckpdir="${PWD}/backups/$(date "+%Y%m%d%H%M%S_backup")"
[ ! -d $bckpdir ] && mkdir -p $bckpdir

echo -e "$G ==> Setup vim configuration"

for name in *; do
  if [[ ${ln_files[*]} =~ $name ]]; then
    target="$HOME/.$name"

    if [ -a $target ]; then
      echo -e "$B [+] Backing up $target to $bckpdir/.$name"
      cp -r $target $bckpdir
      echo -e "$R [-] Removing $target"
      rm -rf $target
    fi

    ln -s "$PWD/$name" "$target"
    echo -e "$G [>] Linked $PWD/$name to $target"
  else
    echo -e "$Y [~] Skipping ${name}"
  fi
done

# Install vim plugins
echo -e "$G [+] Install vim plugins"
if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
  echo -e "$G [+] Download vim-plug $RESET"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim -u $HOME/.vimrc.plugins +PlugInstall +PlugClean! +qa

echo -e "$G Vim configuration done!. $RESET"
