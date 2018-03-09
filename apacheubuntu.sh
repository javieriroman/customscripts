#!/bin/bash
export DEBIAN_FRONTEND="noninteractive"
apt-get update
## Install AMP
apt-get install apache2 -y
sleep 15
apt-get install php libapache2-mod-php -y
slepp 15
apt-get install php-mysql php-common -y
sleep 15
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplehtml > /var/www/html/index.html
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp.php > /var/www/html/index.php
sleep 15
service apache2 start
