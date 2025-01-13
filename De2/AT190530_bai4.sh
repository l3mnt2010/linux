#!/bin/bash

echo "cau hinh may"

lsblk

# Dinh dang o dia voi ext2
echo ""
mkfs.ext2 -F /dev/sda1

# tao thu muc
mkdir -p /THI/THUCHANH

# gan o dia voi thu muc
mount -o remount,rw /dev/sda1 /THI/THUCHANH

cp /etc/passwd /THI/THUCHANH/pass

umount /THI/THUCHANH

mount -o ro /dev/sda1 /THI/THUCHANH #rw la ca 2 quyen