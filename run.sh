# WARNING: RUN AS SUDO

# basics
apt update && apt dist-upgrade && apt install build-essential && apt install curl && apt install gdebi

# create basic folder structure
cd ~/ && mkdir dev && cd dev && mkdir csharp && mkdir tools

# adding snap
apt install snapd

# adding telegram
snap install telegram-desktop

# adding spotify
snap install spotify

# adding node.js
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
apt install nodejs

# adding chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# adding vscode
snap install code

# adding dotnet sdk
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install apt-transport-https
apt update
apt install dotnet-sdk-3.1

# adding oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# adding hyper.is
wget https://hyper-updates.now.sh/download/linux_deb
gdebi linux_deb
