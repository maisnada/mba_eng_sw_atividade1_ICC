#!/bin/bash

apt-get update && \
apt-get install -y mysql-server-5.7 && \
mysql < /vagrant/mysql/user.sql && \
cat /vagrant/mysql/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf && \
service mysql restart