#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m vagrant up \e[m'
echo -e $'\e[1;31m ================================= \e[m'
vagrant snapshot save bootstrapped

# デバッグを終了する
set +x