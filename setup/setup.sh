#!/bin/sh

# XCode install

brew install fzf

brew install fish
chsh -s /usr/local/bin/fish
echo $SHELL
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

fisher add edc/bass

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts/

fisher add oh-my-fish/theme-agnoster
fisher add jethrokuan/z

# Linux
#Ubuntu
sudp apt install git curl fish 

# default shell
chsh -s /usr/bin/fish
