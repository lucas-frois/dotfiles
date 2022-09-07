#!/bin/bash

# currently doing changes to avoid snap. its for your sanity, trust me (the lucas that worked the whole night)

sudo apt update && sudo apt dist-upgrade
sudo apt install build-essential curl wget vim git
sudo apt update && sudo apt dist-upgrade

# dotnet 6
sudo apt-get update && sudo apt-get install -y dotnet6

# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
nvm use node

# telegram
sudo apt install telegram-desktop

# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install spotify-client

# vscode
sudo apt install code

# fish (instead of zsh)
# TODO

# install firacode 
sudo apt install fonts-firacode
fc-cache -f -v

sudo apt autoremove
sudo apt autoclean

git config --global user.name "Lucas Frois" && git config --global user.email "frois.dev@gmail.com"

cd ~ && mkdir dev 
cd dev && mkdir backend && mkdir frontend

# set vscode extensions 
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension ms-vscode.csharp
code --install-extension PKief.material-icon-theme
code --install-extension jmrog.vscode-nuget-package-manager
