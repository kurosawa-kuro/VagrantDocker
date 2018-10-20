#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m vagrant box add                \e[m'
echo -e $'\e[1;31m ================================= \e[m'
vagrant box add ubuntu/xenial64
vagrant box add ubuntu/bionic64

# デバッグを終了する
set +x