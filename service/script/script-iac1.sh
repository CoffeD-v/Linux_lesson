#!/bin/bash

echo "Server updating..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Downloading and copying the application files..."

cd /tmp
wget https://github.com/Amad3eu/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


