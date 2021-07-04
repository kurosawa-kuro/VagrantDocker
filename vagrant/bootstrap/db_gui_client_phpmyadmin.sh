#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install phpmyadmin                \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y phpmyadmin


# デバッグを終了する
set +x