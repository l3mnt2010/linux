#!/bin/bash

# Kiem tra thong tin bo nho
free

# Kiem tra thong tin bo nho va swap
lsblk

# Kiem tra thong tin ve cac thiet bi luu tru
ifconfig

# Thay doi dia chi IP cua giao dien mang ens33 neu giao dien ton tai
if ip link show ens33 &> /dev/null; then
    ifconfig ens33 192.168.56.33 netmask 255.255.255.0
    systemctl restart NetworkManager
else
    echo "Giao dien ens33 khong ton tai."
fi

# Kiem tra va thay doi MTU cho ens33
if ifconfig | grep -q "ens33"; then
    ifconfig ens33 mtu 1000
else
    echo "Giao dien ens33 khong ton tai."
fi

# Nen thu muc /KMA neu no ton tai
if [ -d /KMA ]; then
    tar -czf /KMA/KMA.gz2 -C / KMA
else
    echo "Thu muc /KMA khong ton tai."
fi