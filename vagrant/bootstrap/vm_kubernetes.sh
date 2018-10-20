#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install kubernetes            = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install kubectl               = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install minikube              = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && sudo install minikube-linux-amd64 /usr/local/bin/minikube

# デバッグを終了する
set +x