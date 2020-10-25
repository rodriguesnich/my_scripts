#!/bin/bash

echo "test"

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## sudo apt update && ##

sudo apt install python3 python3-pip

echo "Instalando Snap com Apt..."
sudo apt install snapd

echo "Instalando Brave com Apt..."
sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt install brave-browser

## FlatPack ##
echo "Instalando VS-Code com Flatpack..."
flatpak install flathub com.visualstudio.code

echo "Instalando Postman com Flatpack..."
flatpak install flathub com.getpostman.Postman

echo "Instalando Discord com Flatpack..."
flatpak install flathub com.discordapp.Discord

echo "Instalando Steam com Flatpack..."
flatpak install flathub com.valvesoftware.Steam

echo "Instalando Skype com Flatpack..."
flatpak install flathub com.skype.Client

echo "Instalando InkScape com Flatpack..."
flatpak install flathub org.inkscape.Inkscape

echo "Instalando Spotify com Flatpack..."
flatpak install flathub com.spotify.Client


echo "Instalando Beekeeper-Studio com Snap..."
sudo snap install beekeeper-studio

echo "Instalando Photo-Gimp com Snap..."
sudo snap install photogimp

echo "Atualizando Node"
sudo npm install -g n

## Criacao de Pastas ##


## Pastas de Programacao ##
mkdir/home/$USER/tecnojr

mkdir/home/$USER/programing

mkdir/home/$USER/programing/study

mkdir/home/$USER/programing/projects

## Pastas de Imagens ##
mkdir/home/$USER/Pictures/projects

mkdir/home/$USER/Documents/projects


## Baixar Programas Externos ##

cd /home/$USER/Downloads/


## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
