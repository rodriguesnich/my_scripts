# snap list

# snap search nextcloud

# Instalação facilitada com snap (mais ou menos pq os dominios são chatinhos)
sudo snap install nextcloud

# Comando para adicionar o dominio confiável
sudo snap run nextcloud.occ config:system:set trusted_domains 1 --value=your.fancy.domain

# Reiniciar o serviço para aplicar modificações
sudo snap restart nextcloud