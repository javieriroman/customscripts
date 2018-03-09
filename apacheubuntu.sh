#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 apache2-utils php php-mysql libapache2-mod-php -y
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplehtml > /var/www/html/index.html
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp-v2 > /var/www/html/index.php
service apache2 start
