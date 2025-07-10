My Arch -- Hyprland Dotfiles

Install Guide

Normale Archinstall hyprland basis


#######################
#####----NÖTIG----#####
#######################

sudo pacman -S hyprpaper nnn git curl base-devel

--yay für ArchUserRepository--                  //The AUR is a collection of software made by Users for Arch linux

sudo pacman -Syu
mkdir built-from-git                            //Ordner ist optional, aber empfehlenswert 
cd built-from-git                               //muss auch nicht 'built-from-git' heißen
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

------Code-------
------Spiele-----
