#!/bin/bash
apt-get update
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
iptables -A input -i eth0 -s 10.0.0.0/24 -p tcp --destination-port 3306 -j ACCEPT
mysql -e "grant all privileges on employees.* to 'javier'@'%' identified by 'Diegoroman@18'"
sed -i '/bind-address/c\bind-address=mysqlserver'  /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql restart
