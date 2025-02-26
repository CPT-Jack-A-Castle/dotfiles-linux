#!/usr/bin/env bash

# apt

sudo apt install mlocate -y
sudo apt install remmina -y
sudo apt install ripgrep -y
sudo apt install bat -y
sudo apt install tree -y
sudo apt install xfce4-clipman -y
sudo apt install flameshot -y
sudo apt install keepassx -y
sudo apt install timeshift -y
sudo apt install clipman -y

# snap

sudo apt install snapd -y
sudo service snapd start
sudo apparmor_parser -r /etc/apparmor.d/*snap-confine*
sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap*
#export PATH="$PATH:/snap/bin"

sudo snap install codium --classic
sudo snap install mdless

# Sublime Text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
