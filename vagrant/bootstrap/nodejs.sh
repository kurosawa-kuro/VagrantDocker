#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install                       = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y nodejs npm

sudo npm install n -g
sudo n stable

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = purge                         = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt purge nodejs npm -y
sudo apt autoremove -y

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = check                         = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
node -v

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install typescript            = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo npm install -g typescript

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install yarn                  = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo npm install -g yarn

# デバッグを終了する
set +x
