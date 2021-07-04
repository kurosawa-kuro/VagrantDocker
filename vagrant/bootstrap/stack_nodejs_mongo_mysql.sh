#!/bin/bash

# デバッグを開始する
# set -x
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m nodejs                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./nodejs.sh

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m bootstrap mongodb                 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./db_mongodb.sh

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m bootstrap mysql                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
./db_mysql.sh

# デバッグを終了する
set +x