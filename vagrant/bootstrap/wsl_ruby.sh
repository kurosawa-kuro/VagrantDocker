echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install library                   \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get install -y make
sudo apt-get install -y gcc
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install -y npm                    \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get install -y npm
sudo npm install -g n
sudo n stable

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install rbenv                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init

source ~/.bashrc

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 2.6.1
rbenv rehash

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m rbenv global                      \e[m'
echo -e $'\e[1;31m ================================= \e[m'

rbenv global 2.6.1

ruby -v

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install rails                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
gem install rails

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m install sqlite                    \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo apt-get install -y libsqlite3-dev

gem install sqlite3 -v 1.3.13