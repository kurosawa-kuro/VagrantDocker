#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install redis                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y redis-server

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m redis version                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
redis-server --version

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m redis start                       \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo service redis-server start


# デバッグを終了する
set +x