#!/bin/bash
export DEBIAN_FRONTEND="noninteractive"
apt-get update
## Install AMP
apt-get install apache2 -y
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplehtml > /var/www/html/index.html
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp.php > /var/www/html/index.php
apt-get install php libapache2-mod-php -y
apt-get install php-mysql php-common -y
service apache2 start
