#!/bin/bash

# /bin/bash^M: bad interpreter: No such file or directory
# $ sed -i 's/\r//' <対象のファイル>

# デバッグを開始する
# set -x

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m check                           = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m ubuntu version                  = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
cat /etc/os-release

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check fire wall               = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
sudo ufw status

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check wget                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
wget --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check unzip                   = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
unzip -v | grep UnZip

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check tree                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
tree --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check git                     = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
git --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check docker                  = \e[m'
echo -e $'\e[1;34m ================================= \e[m'  
docker --version
docker-compose --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check node                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
node -v

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check npm                     = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
npm -v

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check java                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
java -version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check javac                   = \e[m'
echo -e $'\e[1;34m ================================= \e[m'
javac -version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check play                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m' 
play --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check mysql                   = \e[m'
echo -e $'\e[1;34m ================================= \e[m' 
mysql --version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check geth                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m' 
geth version

echo -e $'\e[1;34m ================================= \e[m'
echo -e $'\e[1;34m = check solc                    = \e[m'
echo -e $'\e[1;34m ================================= \e[m' 
solc --version

# デバッグを終了する
set +x