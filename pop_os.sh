#!/bin/bash

## Removendo Travas APT ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando Sistema ##
sudo apt update -y

## Instalando Snap ##
echo "Adding Snap"
sudo apt install snapd -y

## DEV ##

## Python3 e pip ##
echo "Installing Python3 e python3-pip"
sudo apt install python3 python3-pip -y

## add nodejs 14 repository
curl --silent --location https://deb.nodesource.com/setup_14.x  | sudo bash -

## NodeJS ##
echo "Installing o NodeJS"
sudo apt install nodejs -y

## npm ##
echo "Installing npm"
sudo apt install npm -y

## yarn ##
echo "Installing yarn"
sudo npm install --global yarn

## VS Code ##
echo "Installing VS-Code"
sudo apt install code -y

## Sublime Text ##
echo "Installing Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get install sublime-text

## Sublime Merge ##
echo "Installing Sublime Merge"
flatpak install flathub com.sublimemerge.App -y

## Insominia ##
echo "Instaling Insominia"
# Add to sources
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install insomnia

## Postman ##
#flatpak install flathub com.getpostman.Postman -y

## Beekeeper ##
echo "Instaling Beekeeper-Studio"
sudo snap install beekeeper-studio

## Zeal ##
echo "Installing Zeal"
sudo apt install zeal -y

## Virtual Box ##
#echo "Installing Virtualbox"
#sudo apt install virtualbox -y

## Gnome Boxes ##
echo "Installing Gnome Boxes"
flatpak install flathub org.gnome.Boxes -y

## GitIgnore ##
echo "Installing Git Ignore"
flatpak install flathub com.github.arshubham.gitignore -y

## SYS ##

## Tweaks##
echo "Installing Gnome Tweaks"
sudo apt install gnome-tweaks -y

## Discord ##
echo "Installing Discord"
sudo apt install discord -y

## Spotify ##
#echo "Installing Spotify"
#flatpak install flathub com.spotify.Client -y

## Torrent ##
echo "Installing Fragments Torrent"
flatpak install flathub de.haeckerfelix.Fragments -y

## Password ##
echo "Instaling Password Safe"
flatpak install flathub org.gnome.PasswordSafe -y

## Backup ##
echo "Installing Back in Time"
sudo apt install backintime-common -y

## gThumb ##
echo "Installing gThumb"
sudo apt install gthumb -y


## DESING ##

## Inkscape ##
echo "Installing InkScape"
sudo apt install inkscape -y

## Photo-Gimp ##
echo "Installing Photo-Gimp"
sudo snap install photogimp

## OBS ##
echo "Installing OBS Studio"
sudo apt install obs-studio -y

## Flameshot ##
echo "Installing Flameshot"
sudo apt install flameshot -y

## Peek ##
echo "Installing Peek"
sudo apt install peek -y

## Color Picker ##
echo "Installing Color Picker"
flatpak install flathub nl.hjdskes.gcolor3

## Criacao de Pastas ##

## Pastas de Programacao ##
mkdir/home/$USER/Code

mkdir/home/$USER/Study


## Navegadores ##

## FireFox Dev ## 
echo "Installing Firefox Developer"
wget -c "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2

sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/

sudo mv /opt/firefox*/ /opt/firefox-developer

echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop

## Android Studio ##
#echo "Installing AndroidStudio"
#flatpak install flathub com.google.AndroidStudio -y

## Finalizando Script ##
echo "finalizando script..."

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
