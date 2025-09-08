curl -o install.sh https://raw.githubusercontent.com/sim-thal/DotFiles/refs/heads/main/install.sh;
sudo chmod +x install.sh;
pacman -Sy kitty;
kitty install.sh;
