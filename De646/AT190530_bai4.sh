useradd -m -d /home/U3 -s /bin/bash U3
useradd -m -d /home/U4 -s /bin/bash U4

echo "U3:u3_123" | chpasswd
echo "U4:u4_456" | chpasswd

usermod U3 -aG root
usermod U4 -aG root

#Thong tin nguoi dung
id U3
id U4

mkdir -p /KMA2

ls -l /KMA2

cp -rf /KMA2 /home/U3

su U3 << EOF
rm -rf /KMA2
EOF

if [ -d /KMA2 ];
then
    echo "Thu muc /KMA2 chua bi xoa"
else
    echo "Thu muc /KMA2 da bi xoa"
fi

# U3 khong the xoa /KMA2 vi folder /KMA2 dang nam trong thu muc goc "/", user U3 khong co quyen write len thu muc goc "/" nen khong the xoa duoc /KMA2
# De co the xoa duoc /KMA2 thi minh can phai chmod 777 / -> gan full quyen cho thu muc goc thi mo co the xoa file trong thu muc goc, group root khong xoa duoc file, chi co the doc va thuc thi file