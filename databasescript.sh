#!/bin/bash
sudo apt update -y
sudo apt install mariadb-server mariadb-client -y
sudo systemctl start mariadb
#systemctl status mariadb
#sudo mysql_secure_installation
#mysql -u root -p
#systemctl restart mariadb
#mysql
#Database commands
sudo mysql -e "CREATE DATABASE wordpress;"
sudo mysql -e "CREATE USER "wordpress"@"localhost" identified by "password";"
sudo mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO "wordpress"@"localhost";"
#vim /etc/mysql/mariadb.conf.d/50-server.cnf 
#comment bind IP