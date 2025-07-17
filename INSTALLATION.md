
Install Guide

sudo pacman -R wofi
sudo pacman -S hyprpaper git curl base-devel 7zip noto-fonts noto-fonts-cjk kate firefox mpv waybar otf-font-awesome

visueller file manager -> sudo pacman -S dolphin    //einer oder beide

    --yay für ArchUserRepository--                  //The AUR is a collection of software made by Users for Arch linux

sudo pacman -Syu
mkdir built-from-git                            //Ordner ist optional, aber empfehlenswert 
cd built-from-git                               //muss auch nicht 'built-from-git' heißen
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S ulauncher 
    \-> dann '1'
    
nach allen installationen Neustarten
     \-> sudo reboot now
-----Aussehen----
cd Downloads 
sudo mv -f style.css /etc/xdg/waybar/
sudo mv -f config.jsonc /etc/xdg/waybar/
sudo mv -f hyprland.conf ~/.config/hypr/
sudo mv -f hyprpaper.conf ~/.config/hypr/
sudo mv image.png ~/
------Code-------
sudo pacman -S emacs
ODER
yay -S visual-studio-code-bin 
    \-> dann '1'
ODER
sudo pacman neovim

------Spiele-----
yay -S prismlauncher           //minecraft

~STEAM~
nano /etc/pacman.conf
ZEILE 89-90 
VON
#[multilib]
#include = /etc/pacman.d/mirrorlist
ZU
[multilib]
include = /etc/pacman.d/mirrorlist

DANN ABHÄNGIG VON GRAFIKKARTEN HERSTEllER (wenn nicht vorhanden cpu HERSTEllER)
--AMD--
sudo pacman -S vulkan-radeon amdvlk 
yay -S vulkan-amdgpu-pro amdgpu-pro-oglp
--NVIDIA--
sudo pacman -S nvidia-utils vulkan-nouveau 
--INTEL--
sudo pacman -S vulkan-intel mesa

nano /etc/locale.gen
IN ZEILE 171 
VON                     //wenn nicht bereits so
#en_US.UTF-8 UTF-8
ZU
en_US.UTF-8 UTF-8

sudo pacman -S ttf-liberation       //Schriftart in steam

sudo pacman -S steam
