#!/bin/bash

# Tao tai khoan user123, user456 voi mat khau 123
id -u user123 &>/dev/null || useradd -m -s /bin/bash user123
id -u user456 &>/dev/null || useradd -m -s /bin/bash user456

echo "user123:123" | chpasswd
echo "user456:123" | chpasswd

# Them quyen ghi cho thu muc goc neu can
chmod o+w /

# Tao thu muc /baitap neu chua ton tai
[ ! -d /baitap ] && mkdir /baitap

# Thiet lap quyen cho thu muc /baitap
chmod 775 /baitap

# Thay doi chu so huu thu muc /baitap cho user123
chown user123:user123 /baitap

# Dang nhap vao user123 va tao file test.txt
su user123 << EOF
echo 'Truong Ngoc Lam - AT190530' > /baitap/test.txt
EOF

# Them user456 vao nhom cua user123
usermod -aG $(id -gn user123) user456

# Dat quyen cho /baitap/test.txt
chmod 764 /baitap/test.txt

# Hien thi thong tin thu muc va tap tin
ls -l /baitap
ls -ld /baitap

# Nen thu muc /baitap
tar -czvf /baitap.gz /baitap

# Hien thi danh sach trong thu muc goc
ls /

# Doi ten user456 thanh 789user
id -u 789user &>/dev/null || usermod -l 789user user456

# Hien thi thong tin tai khoan 789user
id 789user