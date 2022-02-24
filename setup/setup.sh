#!/bin/sh

# XCode install

brew install fzf

brew install fish
chsh -s /usr/local/bin/fish
echo $SHELL
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

fisher install edc/bass

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts/

fisher install oh-my-fish/theme-agnoster
fisher install jethrokuan/z

####### Linux ########
### Ubuntu
sudo apt-get update
sudp apt install git curl fish 

# default shell
chsh -s /usr/bin/fish

# docker
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo chmod +x /usr/local/bin/docker-compose
sudo adduser $(whoami) docker

# docker compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# dir name
LANG=C xdg-user-dirs-gtk-update
