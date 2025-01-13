#!/bin/bash

# Tao nguoi dung U1, U2 co cung mk la sv123456
useradd -m -d /home/U1 -s /bin/bash U1
useradd -m -d /home/U2 -s /bin/bash U2

echo "U1:sv123456" | chpasswd
echo "U1:sv123456" | chpasswd

# Xem thong tin nguoi dung U1, U2

echo ""
echo "thong tin U1"
id U1
cat /etc/passwd | grep U1
cat /etc/shadow | grep U1

echo ""
echo "thong tin U2"
id U2
cat /etc/passwd | grep U2
cat /etc/shadow | grep U2

echo "duong dan vao U1"

su U1 << EOF
cd /home/U1 && pwd
EOF

mkdir /home/U1/KMA_U1

mv /home/U1/KMA_U1 /home/U2/

if [ -d /home/U2/KMA_U1 ]; 
then
    echo "Thu muc /home/U1/KMA_U1 da di chuyen"  
else
    echo "Thu muc /home/U1/KMA_U1 chua di chuyen"  
fi