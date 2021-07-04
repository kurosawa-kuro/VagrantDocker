#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install postgresql                \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y postgresql postgresql-contrib

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m postgresql version                \e[m'
echo -e $'\e[1;31m ================================= \e[m'
psql --version

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m postgresql start                  \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo service postgresql start

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m postgresql status                 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo service postgresql status



# デバッグを終了する
set +x