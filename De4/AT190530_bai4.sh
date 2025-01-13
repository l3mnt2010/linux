# tao cay thu muc
mkdir -p /KMA/Baitap

# tao file co noi dung tuy y trong thu muc
echo "Truong Ngoc Lam - AT190530" > /KMA/Baitap/vanban2.txt

# xem thuoc tinh cua vanban2.txt
ls -l /KMA/Baitap/vanban2.txt

# gan lai quyen 744
chmod 744 /KMA/Baitap/vanban2.txt

# xem lai quyen da thay doi
ls -l /KMA/Baitap/vanban2.txt

# tao U25, pass tuy y
useradd -m -d /home/U25 -s /bin/bash U25
echo "U1:abc@123" | chpasswd

# them quyen ghi de U25 co the sua vanban2.txt
chmod o+w /KMA/Baitap/vanban2.txt

# doi ten voi U25
su U25 << EOF
mv /KMA/Baitap/vanban2.txt /KMA/Baitap/soanthao.txt
EOF

# Kiem tra dia chi mang, dia chi quang ba
ifconfig