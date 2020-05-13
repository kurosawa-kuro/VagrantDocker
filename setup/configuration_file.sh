#!/bin/bash
rm -rf configuration_file/

git clone https://kuromailserver@bitbucket.org/kuromailserver/configuration_file.git
./configuration_file/script/setup_init.sh