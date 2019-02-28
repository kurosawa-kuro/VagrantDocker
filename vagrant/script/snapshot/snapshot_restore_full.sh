#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ====================================== \e[m'
echo -e $'\e[1;31m vagrant snapshot restore full          \e[m'
echo -e $'\e[1;31m ====================================== \e[m'
vagrant snapshot restore full

# デバッグを終了する
set +x