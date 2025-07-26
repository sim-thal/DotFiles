
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
