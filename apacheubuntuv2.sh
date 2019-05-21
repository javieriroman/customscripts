#!/bin/bash
export DEBIAN_FRONTEND="noninteractive"
apt-get update
## Install AMP
apt-get install apache2 unzip mysql-client -y
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplehtml > /var/www/html/index.html
curl -0 https://raw.githubusercontent.com/javieriroman/customscripts/master/simplephpv2.php > /var/www/html/index.php
wget https://github.com/datacharmer/test_db/archive/master.zip
unzip master.zip
cd test_db-master/
mysql -h myjrs.mysql.database.azure.com -u javier@myjrs -pMytest2019 < employees.sql
apt-get install php libapache2-mod-php -y
apt-get install php-mysql php-common -y
service apache2 start
apt-get install --reinstall php-mysql php-common -y
service apache2 restart
