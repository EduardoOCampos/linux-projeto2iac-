#!/bin/bash

echo "Realizando a atualização do servidor"
apt-get update
apt-get upgrade -y

echo "Intalando o apache"
apt-get install apache2 -y

echo "Instalando o unzip"
apt-get install unzip -y

echo "Abrindo para o diretório temp"
cd /tmp

echo "Baixar e copiar os arquivos da aplicação com o wget"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo"
unzip main.zip
echo "
cd linux-site-dio-main
cp -R * /var/www/html/

