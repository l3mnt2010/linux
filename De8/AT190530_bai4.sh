#!/bin/bash

# Xem danh muc cac tien trinh dang thuc hien
ps

# Thuc hien tien trinh gedit
gedit &

# Dung mot tien trinh dang thuc hien
kill -STOP `pidof gedit`
# Tiep tuc tien trinh do
# kill -CONT `pidof gedit`

# Kiem tra tai nguyen RAM
free -h

# Kiem tra tai nguyen ve o dia
lsblk 
# Hoac df -h

#fdisk: Dùng để tạo và quản lý các phân vùng trên ổ đĩa.
#parted: Cũng dùng để quản lý phân vùng như fdisk, nhưng hỗ trợ nhiều định dạng ổ đĩa mới hơn và có các tính năng mở rộng.
#df: Hiển thị thông tin về không gian đĩa và sử dụng trên hệ thống tệp.
#pydf: Tương tự như df, nhưng có giao diện đồ họa và thông tin hiển thị chi tiết hơn.
#lsblk: Liệt kê thông tin về các thiết bị lưu trữ block (ổ đĩa, phân vùng).
#blkid: Hiển thị các thông tin về UUID và loại hệ thống tệp của các thiết bị block.
#hwinfo: Cung cấp thông tin chi tiết về phần cứng hệ thống.