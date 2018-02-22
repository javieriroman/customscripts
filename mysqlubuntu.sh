#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get -y install mysql-server 
service mysql start
apt-get -y install unzip
#https://github.com/datacharmer/test_db
wget https://github.com/datacharmer/test_db/archive/master.zip
unzip master.zip
cd test_db-master/
mysql < employees.sql
mysql  -t < test_employees_md5.sql
