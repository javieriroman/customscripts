#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 -y
apt-get install php libapache2-mod-php -y
apt-get install php-mysql php-pdo -y
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplehtml > /var/www/html/index.html
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp-v2 > /var/www/html/index.php
service apache2 start
