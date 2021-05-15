#!/usr/bin/bash
#
# Basic security settings
# author: v3rlly

#########################
# Disable IPV6 - System
#########################
sudo echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sudo echo "#Disable IPV6" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo sysctl -p

##########################
# SSH Server
##########################
# Disable IPV6
sudo sed -i 's/#AddressFamily any/AddressFamily inet/' /etc/ssh/sshd_config
# CHANGES DEFAULT SSH SERVER PORT TO 7766
sudo sed -i 's/#Port 22/Port 7699/' /etc/ssh/sshd_config
# Remove banner
sudo sed -i 's/#Banner none/Banner none/' /etc/ssh/sshd_config

# Apply changes
echo "\n[!] DEFAULT CONNECTION PORT (22) CHANGED TO 7766\n"
sudo systemctl restart sshd.service
