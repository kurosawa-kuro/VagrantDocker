#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m bootstrap postgres                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee -a /etc/apt/sources.list.d/pgdg.list
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y postgresql-10


# デバッグを終了する
set +x