#!/bin/bash

apt-get update
## Install AMP
apt-get install apache2 apache2-utils php php-mysql libapache2-mod-php -y

service apache2 start
