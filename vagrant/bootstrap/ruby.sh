#!/bin/bash

# デバッグを開始する
# set -x
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m update                            \e[m'
echo -e $'\e[1;31m ================================= \e[m'
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = rbenv install                 = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

rbenv install -l
rbenv install 2.6.6
rbenv global 2.6.6
ruby -v

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install rail                  = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
gem install rails -v 5.2.4.3
rbenv rehash
rails -v

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install pg                    = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt install -y libpq-dev
gem install pg -v '0.18.4'

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = install 確認                  = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
ruby -v
rails -v

# デバッグを終了する
set +x
