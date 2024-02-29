#!/bin/bash

DATABASE=my_db
USER=mysql
PASSWORD=mypass
ROOT_PASSWORD=myrootpass

service mysql start;
sleep 1
mysql -e "CREATE USER IF NOT EXISTS \`${USER}\`@'localhost' IDENTIFIED BY '${PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DATABASE}\`.* TO \`${USER}\`@'%' IDENTIFIED BY '${PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
service mysql stop;
mysqld_safe