#!/bin/bash

## Removendo Travas APT ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando Sistema ##
sudo apt update -y

## Instalando Snap ##
echo "Instalando Snap"
sudo apt install snapd -y


## DEV ##

## Python3 e pip ##
echo "Instalando Python3 e python3-pip"
sudo apt install python3 python3-pip -y

## VS Code ##
echo "Instalando VS-Code"
flatpak install flathub com.visualstudio.code

## Postman ##
echo "Instalando Postman"
flatpak install flathub com.getpostman.Postman

## Beekeeper ##
echo "Instalando Beekeeper-Studio"
sudo snap install beekeeper-studio

## NodeJS ##
echo "Instalando o NodeJS"
sudo apt install nodejs -y

## npm ##
echo "Instalando npm"
sudo apt install npm -y

echo "Atualizando Node"
sudo npm install -g n
sudo n stable




## SYS ##

## Discord ##
echo "Instalando Discord"
flatpak install flathub com.discordapp.Discord

## Steam ##
echo "Instalando Steam"
flatpak install flathub com.valvesoftware.Steam

## Skype ##
echo "Instalando Skype"
flatpak install flathub com.skype.Client

## Spotify ##
echo "Instalando Spotify"
flatpak install flathub com.spotify.Client

## Brave ##
echo "Instalando Brave"
sudo snap install brave


## DESING ##

## Inkscape ##
echo "Instalando InkScape"
flatpak install flathub org.inkscape.Inkscape

## Photo-Gimp ##
echo "Instalando Photo-Gimp"
sudo snap install photogimp












## Criacao de Pastas ##


## Pastas de Programacao ##
mkdir/home/$USER/tecnojr

mkdir/home/$USER/programing

mkdir/home/$USER/programing/study

mkdir/home/$USER/programing/code

mkdir/home/$USER/programing/tecnojr

## Pastas de Imagens ##
mkdir/home/$USER/Pictures/projects

mkdir/home/$USER/Documents/projects


## Baixar Programas Externos ##

cd /home/$USER/Downloads/

## Chrome ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

## 4k video downloader ##
wget -c https://dl.4kdownload.com/app/4kvideodownloader_4.13.3-1_amd64.deb?source=website

## 4k music downloader ##
wget -c https://dl.4kdownload.com/app/4kyoutubetomp3_3.13.2-1_amd64.deb?source=website


## Instala todos os .deb ##
sudo dpkg -i *.deb


## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
