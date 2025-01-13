#!/bin/bash

## Cau 3:
# Tao tai khoan user1 voi mat khau tuy y
useradd -m -d /home/user1 -s /bin/bash user1
echo "user1:123" | chpasswd

# Tao nhom group1 neu nhom chua ton tai
if ! getent group group1 > /dev/null; then
  groupadd group1
fi

# Gan user1 vao nhom group1
usermod -aG group1 user1

# Kiem tra user1 đã tham gia group1 hay chưa
groups user1

# Xem so hieu nguoi dung cua user1
id -u user1

# Xem so hieu nhom cua group1
getent group group1

# ghi ten va ma sinh vien
echo "Truong Ngoc Lam - AT190530" > /home/user1/file1.txt

# hien thi noi dung cua file1.txt
cat /home/user1/file1.txt

# Xem chi tiet thuoc tinh file1.txt
ls -l /home/user1/file1.txt