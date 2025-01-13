#!/bin/bash

# Kiem tra mang
ifconfig

# Dat ip tinh tren may chu Linux 192.168.0.100/255.255.0

ifconfig enp0s3 192.168.0.100 netmask 255.255.255.0

# Khoi dong lai network manager
systemctl restart NetworkManager

ifconfig

ping -c 4 192.168.0.1
ifconfig enp0s3 192.168.1.200 netmask 255.255.255.252
ifconfig ens33 down
ifconfig ens33 up
ifconfig ens33
#wget download.net/file1