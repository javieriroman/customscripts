 #!/bin/bash


## Install AMP
apt-get install apache2 apache-utils php php-mysql libapache2-mod-php -y

service apache2 start
