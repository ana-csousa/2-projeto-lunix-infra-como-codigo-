#! /bin/bash

echo"Atualizando o servidor "
apt-get update
apt-get upgrade -y

echo"instalando o apache e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo"abrindo pasta tmp para baixar e armazenar o main"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd /tmp/linux-site-dio-main
cp -R * /var/www/html/

 
