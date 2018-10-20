#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m bootstrap scala                    \e[m'
echo -e $'\e[1;31m ================================= \e[m'

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m set constant                      \e[m'
echo -e $'\e[1;31m ================================= \e[m'
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

# echo -e $'\e[1;32m ================================= \e[m'
# echo -e $'\e[1;32m scala -version                    \e[m'
# echo -e $'\e[1;32m ================================= \e[m'
# sbt -version

# デバッグを終了する
set +x