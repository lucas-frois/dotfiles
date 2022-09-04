#!/bin/bash

# currently doing changes to avoid snap. its for your sanity, trust me (the lucas that worked the whole night)

sudo apt update && sudo apt dist-upgrade
sudo apt install build-essential curl wget vim git
sudo apt update && sudo apt dist-upgrade

# adding repositories and getting scripts
# curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# we are going to use nvm instead. use latest version of node because we are badass

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# firefox comes as default browser. we are trying to change and avoid the big corp

# wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
# since we are using (k)ubuntu 22 or greater, we should download ONLY dotnet 6 or greater versions

sudo apt-get update && sudo apt-get install -y dotnet6
# isnt needed to add sources or whatever

# node
# sudo apt install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
nvm use node

# telegram
sudo apt install telegram-desktop

# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install spotify-client

# chrome
# sudo dpkg -i google-chrome-stable_current_amd64.deb

# vscode
# sudo snap install code --classic # avoid snap
sudo apt install code

# dotnet sdk already done
# sudo dpkg -i packages-microsoft-prod.deb
# sudo apt update
# sudo apt install dotnet-sdk-3.1

# zsh and oh-my-zsh
# sudo apt install zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install firacode 
sudo apt install fonts-firacode
fc-cache -f -v

# hyper.is
# sudo gdebi linux_deb # honestly, i dont know what i meant here. i suppose linux_deb was the path for hyper.is .deb package but...
# anyway, im going to manually try hyperis and fish and later, if works, add here

# sudo apt install -f

sudo apt autoremove
sudo apt autoclean

git config --global user.name "Lucas Frois"
git config --global user.email "frois.dev@gmail.com"

cd ~ && mkdir dev 
cd dev && mkdir backend && mkdir frontend
    
# get default config - im not going to use it (right now)
# tar -xzvf defaults.tar.gz -C ~/
# mv ~/defaults ~/.defaults
 
# set chrome extensions

# set vscode extensions 
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension ms-vscode.csharp
code --install-extension PKief.material-icon-theme
code --install-extension jmrog.vscode-nuget-package-manager

# update settings.json


# set wallpaper
# dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
# var Desktops = desktops();                                                                                                                       
# for (i=0;i<Desktops.length;i++) {
#         d = Desktops[i];
#         d.wallpaperPlugin = "org.kde.image";
#         d.currentConfigGroup = Array("Wallpaper",
#                                     "org.kde.image",
#                                     "General");
#         d.writeConfig("Image", "/home/frvs/.defaults/wall.jpg");
# }'
