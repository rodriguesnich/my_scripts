
wget "https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.3/xampp-linux-x64-8.0.3-0-installer.run/download" -O xampp-installer.run

chmod +x xampp-installer.run

sudo ./xampp-installer.run

echo -e '[Desktop Entry]\n Version=1.0\n Name=xampp\n Exec=gksudo /opt/lampp/manager-linux-x64.run\n Icon=/opt/lampp/icons/world1.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/xampp.desktop

sudo chmod +x /usr/share/applications/xampp.desktop

cp /usr/share/applications/xampp.desktop  ~/Área\ de\ Trabalho/
