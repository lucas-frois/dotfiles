#!/bin/bash

# currently doing changes to avoid snap. its for your sanity, trust me (the lucas that worked the whole night)

sudo apt update && sudo apt dist-upgrade
sudo apt install build-essential curl wget vim git software-properties-common apt-transport-https -y
sudo apt update && sudo apt dist-upgrade

# dotnet 6
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update && sudo apt-get install dotnet-sdk-6.0 -y 

# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node # didnt work, fix later
nvm use node # didnt work, fix later. maybe bc we need to reload bash

# telegram
sudo apt install telegram-desktop -y

# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install spotify-client -y

# vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y

# fish (instead of zsh)
sudo apt install fish
echo "# PERSONAL SCRIPTS" >> ~/.bashrc
echo "fish" >> ~/.bashrc

# install firacode 
sudo apt install fonts-firacode
fc-cache -f -v

sudo apt autoremove && sudo apt autoclean

git config --global user.name "Lucas Frois" && git config --global user.email "frois.dev@gmail.com"

cd ~ && mkdir dev 
cd dev && mkdir backend && mkdir frontend

# set vscode extensions 
code --install-extension bceskavich.theme-dracula-at-night &&
code --install-extension ms-dotnettools.csharp &&
code --install-extension PKief.material-icon-theme
