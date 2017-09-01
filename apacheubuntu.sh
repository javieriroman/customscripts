#!/bin/sh


## Install AMP
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

sudo service apache2 start
