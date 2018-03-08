#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 apache2-utils php php-mysql php-pdo libapache2-mod-php wget -y
service apache2 start
wget https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephp.php
mv simplephp.php index.php
mv index.php /var/www/html/
service apache2 restart
