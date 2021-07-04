#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install mongodb                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get install -y mongodb

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m mongodb version                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
mongod --version

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m mongodb start                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo service mongodb start

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m mongodb status                    \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo service mongodb status



# デバッグを終了する
set +x