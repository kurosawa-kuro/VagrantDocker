#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install mysql                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install mysql-server

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m mysql version                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
mysql --version

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m mysql start                       \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo /etc/init.d/mysql start

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m set mysql_secure_installation     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo mysql_secure_installation



# デバッグを終了する
set +x
