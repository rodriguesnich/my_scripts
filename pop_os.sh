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

## add nodejs 14 repository
curl --silent --location https://deb.nodesource.com/setup_14.x  | sudo bash -

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


## VS Code ##
echo "Instalando VS-Code"
sudo apt install code -y

## Insominia ##
echo "Instaling Insominia"
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia -y

## Beekeeper ##
echo "Instaling Beekeeper-Studio"
sudo snap install beekeeper-studio

## Sublime Merge ##
echo " Sublime Merge"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-merge

## Zeal ##
echo "Installing Zeal"
sudo apt-get install zeal

## FireFox Dev ## 
echo "Installing Firefox Developer"
wget -c "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2

sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/

sudo mv /opt/firefox*/ /opt/firefox-developer

echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop


## SYS ##

## Tweaks##
echo "Installing Gnome Tweaks"
sudo apt install gnome-tweaks

## Discord ##
echo "Installing Discord"
sudo apt install discord -y

## Spotify ##
echo "Installing Spotify"
flatpak install flathub com.spotify.Client

## Torrent ##
echo "Installing Fragments Torrent"
sudo snap install fragments

## Password ##
flatpak install flathub org.gnome.PasswordSafe -y


## DESING ##

## Inkscape ##
echo "Installing InkScape"
sudo apt install inkscape -y

## Photo-Gimp ##
echo "Installing Photo-Gimp"
sudo snap install photogimp


## Criacao de Pastas ##


## Pastas de Programacao ##
mkdir/home/$USER/Code

mkdir/home/$USER/Study


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

## Instala todos os .deb ##
echo "Instalando todos os Pacotes .deb"
sudo dpkg -i *.deb


## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
