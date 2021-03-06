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
sudo apt install code -y

## Insominia ##

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia -y

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

## yarn ##
echo "Instalando yarn"
sudo npm install --global yarn




## SYS ##

## Tweaks##
echo "Instalando Gnome Tweaks"
sudo apt install gnome-tweaks

## Discord ##
echo "Instalando Discord"
sudo apt install discord -y

## Spotify ##
echo "Instalando Spotify"
flatpak install flathub com.spotify.Client

## Brave ##
echo "Instalando Brave"
sudo apt install apt-transport-https curl gnupg -y

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

## Torrent ##
echo "Instalando Fragments Torrent"
sudo snap install fragments

## Password ##
flatpak install flathub org.gnome.PasswordSafe -y

## DESING ##

## Inkscape ##
echo "Instalando InkScape"
sudo apt install inkscape -y

## Photo-Gimp ##
echo "Instalando Photo-Gimp"
sudo snap install photogimp


## Criacao de Pastas ##


## Pastas de Programacao ##
mkdir/home/$USER/Tecno

mkdir/home/$USER/Dev

mkdir/home/$USER/Dev/study

mkdir/home/$USER/Dev/code

mkdir/home/$USER/Dev/tecno


## Baixar Programas Externos ##

cd /home/$USER/Downloads/

## Chrome ##
echo "Baixando google chrome"
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

## 4k video downloader ##
echo "Baixando 4k video downloader"
wget -c https://dl.4kdownload.com/app/4kvideodownloader_4.13.3-1_amd64.deb?source=website

## 4k music downloader ##
echo "Baixando 4k music downloader"
wget -c https://dl.4kdownload.com/app/4kyoutubetomp3_3.13.2-1_amd64.deb?source=website

## Steam ##
echo "Baixando Steam"
https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb

## FireFox Dev ## 
echo "Baixando Firefox Developer"
wget -c "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2

sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/

sudo mv /opt/firefox*/ /opt/firefox-developer

echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop

## Instala todos os .deb ##
echo "Instalando todos os Pacotes .deb"
sudo dpkg -i *.deb


## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
