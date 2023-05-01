#!/bin/bash
#
# Install script for Edwin Donovan's dotfiles

dirs=('dunst' 'hypr' 'kitty' 'swayidle' 'waybar' 'wlogout' 'wofi')

for dir in "${dirs[@]}" ; do
  if [[ -e $XDG_CONFIG_HOME/$dir ]] ; then
    mv $XDG_CONFIG_HOME/$dir "$XDG_CONFIG_HOME/${dir}.orig" && echo "Renamed existing $XDG_CONFIG_HOME/$dir to $XDG_CONFIG_HOME/${dir}.conf"
  fi
  cp -r ./.config/$dir $XDG_CONFIG_HOME/$dir && echo "Copied ./.config/$dir to $XDG_CONFIG_HOME/$dir"
done

read -p "Do you want to copy over the .bashrc too? y/n" cpbashrc
case $cpbashrc in
  y | Y | yes)
    if [[ -f $HOME/.bashrc ]] ; then
      mv $HOME/.bashrc $HOME/.bashrc_orig && echo "Renamed existing .bashrc to .bashrc_orig" 
    fi
    cp ./.bashrc $HOME/.bashrc && echo "Copied .bashrc"
    ;;
  n | N | no)
    echo "Ok, not copying .bashrc"
    ;;
  *)
    echo "Invalid option, not taking any chances, not copying .bashrc" 
    ;;
esac
echo "All finished!"
