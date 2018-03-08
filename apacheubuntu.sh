#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 apache2-utils php php-mysql php-pdo libapache2-mod-php wget -y
service apache2 start
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp.php > /var/www/html/index.php
