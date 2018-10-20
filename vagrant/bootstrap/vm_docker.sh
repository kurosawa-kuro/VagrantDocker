#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install docker                = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update -y
sudo apt install -y docker-ce

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install docker-compose        = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $USER

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = docker version                = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker --version
docker-compose --version

# デバッグを終了する
set +x
