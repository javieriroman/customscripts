#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 apache2-utils php php-mysql php-pdo libapache2-mod-php -y
service apache2 start
wget 
mv simplephp.php index.php
mv index.php /var/www/html/
