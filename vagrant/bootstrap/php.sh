#!/bin/bash

# デバッグを開始する
# set -x
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m add repository                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo add-apt-repository ppa:ondrej/php

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install php                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y php7.4 php7.4-zip php7.4-mbstring php7.4-xml php7.4-mysql php7.4-pgsql unzip

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install composer                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install Laravel                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
composer global require "laravel/installer" --prefer-dist

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m path                             \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

echo 'export PATH="~/.config/composer/vendor/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc

laravel -v

# デバッグを終了する
set +x
