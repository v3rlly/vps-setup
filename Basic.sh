#!/usr/bin/bash
#
# Basic configuration for development 
# author: v3rlly

# update
sudo apt-get update

# build essential / gcc / g++ / make / cmake
sudo apt-get install -y build-essential
sudo apt-get install -y cmake

# install kernel headers
sudo apt install linux-headers-$(uname -r)

# Essential
sudo apt install -y git vim tmux
sudo apt install -y netcat curl
sudo apt install -y p7zip-full zip unzip
sudo apt install -y net-tools dnsutils
sudo apt install -y libdbus-1-dev
sudo apt install -y libssl-dev
sudo apt install -y libssh-dev
sudo apt install -y lua5.3
sudo apt install -y htop
sudo apt install -y tor
