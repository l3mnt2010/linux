#!/bin/bash

# Xem danh sach o dia co tren linux
lsblk

# Tao thu muc -p la neu cau truc chua ton tai thi tao ca
mkdir -p /KMA/Security

mkdir -p /THI

# Thuc hien anh xa o dia cdrom(iso) vao thu muc /KMA/Security
mount -o remount,rw /dev/cdrom /KMA/Security

# Copy file bat ky trong /KMA/Security toi o dia goc /THI

echo "Truong Ngoc Lam - AT190530" > /KMA/Security/flag.txt

chmod +r /KMA/Security/flag.txt

cp /KMA/Security/flag.txt /THI/flag.txt