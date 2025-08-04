clear

# every package for my configuration
sudo pacman -Sy hyprland dunst kitty uwsm dolphin xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim slurp hyprpaper git base-devel 7zip noto-fonts noto-fonts-cjk kate firefox mpv waybar otf-font-awesome ly;
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
sudo pacman -S freetype2 harfbuzz cairo pango wayland libxkbcommon meson scdoc wayland-protocols
yay -S tofi;

#temporary directory for actual config + Background files
cd ~;
mkdir temp;
cd temp;

#get config files
curl -o config.jsonc https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/config.jsonc;
curl -o hyprland.conf https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/hyprland.conf;
curl -o hyprpaper.conf https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/hyprpaper.conf;
curl -o hyprsunset.conf https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/hyprsunset.conf;
curl -o style.css  https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/style.css;
curl -o image.png https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/BG/image.png;
curl -o config.ini https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/config.ini;
curl -o kitty.conf https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/kitty.conf;
curl -o config.txt https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/configs/config.txt;

#move config files to apropriate locations
sudo mv -f style.css /etc/xdg/waybar/;
sudo mv -f config.jsonc /etc/xdg/waybar/;
sudo mv -f config.ini /etc/ly/;
mv -f hyprland.conf ~/.config/hypr/;
mv -f hyprpaper.conf ~/.config/hypr/;
mv -f hyprsunset.conf ~/.config/hypr/;
mv image.png ~/;
mv kitty.conf ~/.config/kitty;
mkdir ~/.config/tofi;
mv config.txt ~/.config/tofi;

pacman -R meson scdoc
cd ~;
rmdir temp;
while true; do
    read -p " REBOOT to apply changes " yn
    case $yn in
        [Yy]* ) sudo reboot now; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer with y or n.";;
    esac
done

