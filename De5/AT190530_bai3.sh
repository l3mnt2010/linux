#!/bin/bash

## Cau 3:
# Tao tai khoan user1 voi mat khau tuy y
useradd -m -d /home/user1 -s /bin/bash user1
echo "user1:123" | chpasswd  # Đảm bảo rằng mật khẩu là của user1

# Tao nhom group1 nếu nhóm chưa tồn tại
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

# xem duong dan cua thu muc chu user1

su user1 << EOF
eval echo ~user1
EOF

# Ghi tên và mã sinh viên vào file1.txt
echo "Truong Ngoc Lam - AT190530" > /home/user1/file1.txt

# Hiển thị nội dung của file1.txt
cat /home/user1/file1.txt

# Xem chi tiết thuộc tính của file1.txt
ls -l /home/user1/file1.txt