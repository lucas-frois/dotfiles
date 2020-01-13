#!/bin/bash

sudo apt update && sudo apt dist-upgrade
sudo apt install build-essential curl wget vim git snapd apt-transport-https
sudo apt update && sudo apt dist-upgrade

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update && sudo apt dist-upgrade

# node
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt install nodejs

# telegram
sudo add-apt-repository ppa:atareao/telegram
sudo apt install telegram 

# spotify 
sudo apt install spotify-client

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# vscode
sudo snap install code --classic

# dotnet sdk
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install dotnet-sdk-3.1

# zsh and oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install -f
sudo apt autoremove

git config --global user.name "frvs"
git config --global user.email "ffrois.lucas@gmail.com"

cd ~ && mkdir fdev 
cd fdev && mkdir csharp && mkdir node & mkdir frontend
    
