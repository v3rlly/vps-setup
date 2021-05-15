#!/usr/bin/bash

########### install nginx and redis ###########
sudo apt-get install -y nginx redis-server
# stop and disable both
sudo systemctl stop nginx.service && systemctl disable nginx.service
sudo systemctl stop redis-server.service && sudo systemctl disable redis-server.service
