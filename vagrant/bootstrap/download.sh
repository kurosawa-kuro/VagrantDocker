#!/bin/bash

# デバッグを開始する
# set -x
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m git clone                         \e[m'
echo -e $'\e[1;31m ================================= \e[m'
git clone https://github.com/kurosawa-kuro/VagrantDocker.git

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = image pull                    = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker pull kdelfour/cloud9-docker

# デバッグを終了する
set +x