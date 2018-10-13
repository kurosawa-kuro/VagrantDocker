#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m remove vagrant                    \e[m'
echo -e $'\e[1;31m ================================= \e[m'
rm -rf .vagrant

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m vagrant halt \e[m'
echo -e $'\e[1;31m ================================= \e[m'
vagrant halt

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m vagrant destroy -f \e[m'
echo -e $'\e[1;31m ================================= \e[m'
vagrant destroy -f

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m vagrant up --provision \e[m'
echo -e $'\e[1;31m ================================= \e[m'
vagrant up --provision

# デバッグを終了する
set +x