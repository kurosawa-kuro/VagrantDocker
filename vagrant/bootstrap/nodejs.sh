#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install nvm                   = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = check nvm                     = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
command -v nvm

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install node.js               = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
nvm install --lts

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install node.js               = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
node --version

# echo -e $'\e[1;31m ================================= \e[m'
# echo -e $'\e[1;31m = install typescript            = \e[m'
# echo -e $'\e[1;31m ================================= \e[m'
# npm install -g typescript

# echo -e $'\e[1;31m ================================= \e[m'
# echo -e $'\e[1;31m = install yarn                  = \e[m'
# echo -e $'\e[1;31m ================================= \e[m'
# npm install -g yarn

# デバッグを終了する
set +x
