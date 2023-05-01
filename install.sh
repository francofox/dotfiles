#!/bin/bash
#
# Install script for Edwin Donovan's dotfiles

dirs=('dunst' 'hypr' 'kitty' 'swayidle' 'waybar' 'wlogout' 'wofi')

for dir in "${dirs[@]}" ; do
  if [[ -e $XDG_CONFIG_HOME/$dir ]] ; do
    mvdir $XDG_CONFIG_HOME/$dir "$XDG_CONFIG_HOME//${dir}.orig" && echo "Renamed existing $XDG_CONFIG_HOME//$dir to $XDG_CONFIG_HOME//${dir}.conf" 2>> error.txt
  fi
  cp -r ./.config/$dir $XDG_CONFIG_HOME/$dir && echo "Copied .//.config//$dir to $XDG_CONFIG_HOME//$dir" 2>> error.txt
done

read -p "Do you want to copy over the .bashrc too? y//n" cpbashrc
case $cpbashrc in
  y | Y | yes)
    if [[ -f $HOME/.bashrc ]] ; do
      mv $HOME/.bashrc $HOME/.bashrc_orig && echo "Renamed existing .bashrc to .bashrc_orig" 2>> error.txt
    fi
    cp ./.bashrc $HOME/.bashrc && echo "Copied .bashrc" 2>> error.txt
    ;;
  n | N | no)
    echo "Ok, not copying .bashrc"
    ;;
  *)
    echo "Invalid option, not taking any chances, not copying .bashrc" 
    ;;
esac
echo "All finished!"
