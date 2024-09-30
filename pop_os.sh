#!/bin/bash

## Removendo Travas APT ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando Sistema ##
sudo apt update -y

## DEV ##

## Python3 e pip ##
echo "Installing Python3 e python3-pip"
sudo apt install python3 python3-pip -y

## NodeJS ##
echo "Installing o NodeJS"
sudo apt install nodejs -y

## npm ##
echo "Installing npm"
sudo apt install npm -y

## VS Code ##
echo "Installing VS-Code"
sudo apt install code -y

## NeoVim ##
echo "Installing NeoVin"
sudo apt install neovim -y

## Zeal ##
echo "Installing Zeal"
sudo apt install zeal -y

## SYS ##

## Tweaks##
echo "Installing Gnome Tweaks"
sudo apt install gnome-tweaks -y

## Discord ##
echo "Installing Discord"
sudo apt install discord -y

## Steam ##
echo "Installing Steam"
sudo apt install steam -y

## Spotify ##
echo "Installing Spotify"
flatpak install flathub com.spotify.Client -y

## Torrent ##
echo "Installing Fragments Torrent"
flatpak install flathub de.haeckerfelix.Fragments -y

## gThumb ##
echo "Installing gThumb"
sudo apt install gthumb -y

## Prusa Slicer ##
echo "Installing Prusa Slicer"
flatpak install flathub com.prusa3d.PrusaSlicer -y


## DESING ##

## Inkscape ##
echo "Installing InkScape"
sudo apt install inkscape -y

## Flameshot ##
echo "Installing Flameshot"
sudo apt install flameshot -y

## Peek ##
echo "Installing Peek"
sudo apt install peek -y

## Color Picker ##
echo "Installing Color Picker"
flatpak install flathub nl.hjdskes.gcolor3 -y

## Obsidian ##
echo "Installing Obsidian"
flatpak install flathub md.obsidian.Obsidian -y

## Navegadores ##

## Zen Browser ##
echo "Installing Zen Browser"
flatpak install flathub io.github.zen_browser.zen -y

## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
