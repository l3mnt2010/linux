#!/bin/bash

# Dinh dang o dia voi dinh dang ext4
mkfs.ext4 -F /dev/sda1

mkdir -p /THI1_HK /THI2_HK /THI21

# gan so dia voi thu muc
mount /dev/sda1 /THI1_HK

# Tạo tập tin sau khi mount
echo "test" > /THI1_HK/file

# sao luu mot file bat ky tu o dia vao /THI2_HK bang lenh rsync
rsync -av /THI1_HK/file /THI2_HK

# copy file bat ky tren o dia goc vao /THI21
cp /etc/passwd /THI21/pass

# huy bo gan ket giua THI1_HK voi o tren
umount /THI1_HK

# Hủy gắn kết phân vùng /dev/sda1 khỏi /THI1_HK. Sau lệnh này, nội dung gốc của thư mục /THI1_HK (bao gồm file file) sẽ hiển thị lại.

# File pass trong /THI21 vẫn tồn tại vì thư mục này không bị ảnh hưởng bởi lệnh gắn/hủy gắn.

# File file trong /THI1_HK sẽ chỉ hiển thị sau khi hủy gắn kết vì nội dung ban đầu của thư mục bị ẩn khi phân vùng được gắn.

# Mount:

# Khi bạn gắn một phân vùng vào một thư mục bằng lệnh mount, nội dung của phân vùng sẽ được ánh xạ vào thư mục đó.
# Sau khi gắn kết, mọi thao tác truy cập thư mục đều tương ứng với phân vùng, và nội dung gốc của thư mục sẽ tạm thời bị ẩn.
# Unmount:

# Khi bạn hủy gắn kết bằng lệnh umount, thư mục sẽ trở về trạng thái ban đầu, hiển thị nội dung gốc trước khi gắn phân vùng.