#!/bin/bash

# Tao thu muc /KMA
mkdir -p /KMA

# Tao file voi noi dung
echo "Mot ngay tot lanh" > /KMA/svktmm.txt

# Thay doi noi dung file svktmm.txt bo sung ten mung
echo "Truong Ngoc Lam" >> /KMA/svktmm.txt

# xem lai noi dung file svktmm.txt
cat /KMA/svktmm.txt

# nen thu muc /KMA thanh kma...gz2
tar -czf /KMA/kma...gz2 -C / KMA
