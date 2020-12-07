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

## MySQL ##
echo "Instalando MySQL"
sudo apt install mysql-server -y

## PHP ##
echo "Instalando PHP e Apache"
sudo apt-get install apache2 -y
sudo systemctl start apache2.service

apt-cache pkgnames | grep php7.2

sudo apt-get install php -y
sudo apt-get install php-{bcmath,bz2,intl,gd,mbstring,mysql,zip,fpm} -y

systemctl restart apache2.service

php -v

## Composer ##
echo "Instalando Composer"
sudo apt install php-cli unzip
cd ~

curl -sS https://getcomposer.org/installer -o composer-setup.php

HASH=`curl -sS https://composer.github.io/installer.sig`

php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

composer


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

## Torrent ##
echo "Instalando QBit Torrent"
flatpak install flathub org.qbittorrent.qBittorrent


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

## FireFox Dev ## 
wget -c "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2

sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/

sudo mv /opt/firefox*/ /opt/firefox-developer

echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop

## Instala todos os .deb ##
sudo dpkg -i *.deb


## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
