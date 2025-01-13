#!/bin/bash

# xem danh sach o dia co tren Linux
lsblk

#  tao thu muc KMA/data
mkdir -p /KMA/data

# Thuc hien anh xa o dia cdrom(iso) vao thu muc /KMA/data
mount /dev/cdrom /KMA/Security

echo "KCSC{y0U_pwned_me!!!}" > /KMA/data/flag.txt

# Sao chep 1 file bat ky trong /KMA/data toi o dia goc
cp /KMA/data/flag.txt /

# kiem tra trong thu muc
ls / | grep flag.txt
