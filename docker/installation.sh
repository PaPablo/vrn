#!/bin/bash

echo "INSTALLING TORCH"

cd /root/torch; bash install-deps;
./install.sh
source install/bin/torch-activate

echo "INSTALLING LUA DEPENDENCIES"
cd /root/thpp/thpp
THPP_NOFB=1 ./build.sh

cd /root/fblualib/fblualib/python
luarocks make rockspec/*

echo "Downloading source code"
cd /root/vrn
./download.sh

#Everything should be doable by the default user (fuck security amiright)
#Installation is done by root for convenience
#Give the `ubuntu` user ownership and permissions to everything installed
#chown -R ubuntu /home/ubuntu /usr
#chmod -R u+wrx /home/ubuntu /usr
