# Dotfiles
## My hyprland config and PS1 prompt

To get the prompt, add the following two lines to the .bashrc:

* `PS1=$'\[\e[1m\]\[\e[38;5;255m\]\\u@\\h \[\e[3m\]\\W\[\e[23m\] \[\e[38;5;25m\]\uf054\[\e[38;5;27m\]\uf054\[\e[38;5;39m\]\uf054 \[\e[2m\]\[\e[38;5;254m\]'`  
* `PS2=$'\[\e[38;5;25m\]\uf054\[\e[38;5;27m\]\uf054\[\e[38;5;39m\]\uf054 \[\e[2m\]\[\e[38;5;254m\]'`

These are the dependencies for the dotfiles:
* hyprland-git
* wofi-wifi-menu
* waybar-hyprland-git
* swayidle
* wofi
* wlogout
* wlroots
* dunst
* grim
* kitty
* polkit-gnome
* brightnessctl
* xdg-desktop-portal-wlr
* papirus-icon-theme
* networkmanager
* nerd-fonts

To install:

1. `yay -S hyprland-git waybar-hyprland-git swayidle wofi wlogout wlroots dunst grim kitty polkit-gnome brightnessctl xdg-desktop-portal-wlr papirus-icon-theme networkmanager wofi-wifi-menu-git`  
2. `./install.sh`


