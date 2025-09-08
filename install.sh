clear;

# every package for my configuration
sudo pacman -Sy hyprland dunst kitty uwsm dolphin xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprsunset grim slurp hyprpaper git base-devel 7zip noto-fonts noto-fonts-cjk kate firefox mpv waybar otf-font-awesome ly;
systemctl enable ly.service;
cd ~;

#directory for app(s) built with git {just a nice thing to have makes PC more orderly}
mkdir built-from-git;
cd built-from-git;

#package manager for ArchUserRepository packages
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;

#install quick menu from ArchUserRepository
# dependencies
sudo pacman -S freetype2 harfbuzz cairo pango wayland libxkbcommon meson scdoc wayland-protocols;
yay -S tofi;
pacman -R meson scdoc;

cd ~/built-from-git;
git clone https://github.com/sim-thal/DotFiles.git;
cd ~/built-from-git/DotFiles/configs

#move config files to apropriate locations
sudo mv -f style.css /etc/xdg/waybar/;
sudo mv -f config.jsonc /etc/xdg/waybar/;
sudo mv -f config.ini /etc/ly/;
mv -f hyprland.conf ~/.config/hypr/;
mv -f hyprpaper.conf ~/.config/hypr/;
mv -f hyprsunset.conf ~/.config/hypr/;
mv kitty.conf ~/.config/kitty;
mkdir ~/.config/tofi;
mv config.txt ~/.config/tofi;
cd ~/built-from-git/DotFiles/BG;
mv image.jpg ~/;
cd ~/built-from-git/DotFiles;
7z x Go-Mono.zip;
sudo mv Go-Mono /usr/share/fonts/;

cd ~;

while true; do
    read -p " REBOOT to apply changes " yn
    case $yn in
        [Yy]* ) sudo reboot now; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer with y or n.";;
    esac
done

