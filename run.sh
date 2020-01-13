#!/bin/bash

sudo apt update && sudo apt dist-upgrade
sudo apt install build-essential curl wget vim git snapd apt-transport-https gdebi
sudo apt update && sudo apt dist-upgrade

# adding repositories and getting scripts
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo add-apt-repository ppa:atareao/telegram
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

# node
sudo apt install nodejs

# telegram
sudo apt install telegram 

# spotify
sudo apt install spotify-client

# chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb

# vscode
sudo snap install code --classic

# dotnet sdk
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install dotnet-sdk-3.1

# zsh and oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install firacode 
sudo apt install fonts-firacode
fc-cache -f -v

# hyper.is
sudo gdebi linux_deb

sudo apt install -f
sudo apt autoremove

git config --global user.name "frvs"
git config --global user.email "ffrois.lucas@gmail.com"

cd ~ && mkdir fdev 
cd fdev && mkdir csharp && mkdir node & mkdir frontend
    
# get default config
tar -xzvf defaults.tar.gz -C ~/
mv ~/defaults ~/.defaults
 
# set chrome extensions

# set vscode extensions 
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension ms-vscode.csharp
code --install-extension PKief.material-icon-theme
code --install-extension jmrog.vscode-nuget-package-manager

# update settings.json


# set wallpaper
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();                                                                                                                       
for (i=0;i<Desktops.length;i++) {
        d = Desktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
        d.writeConfig("Image", "/home/frvs/.defaults/wall.jpg");
}'
