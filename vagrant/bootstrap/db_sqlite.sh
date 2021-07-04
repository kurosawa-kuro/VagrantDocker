#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install sqlite3                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y sqlite3

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m sqlite3 version                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sqlite3 --version


# デバッグを終了する
set +x