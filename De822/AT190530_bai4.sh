useradd -m -d /home/U1 -s /bin/bash U1

echo "U1:abc@123" | chpasswd

echo "test 1" > /home/U1/F1.txt
if [ -e /home/U1/F1.txt ];
then
    echo "F1.txt co ton tai trong thu muc chu U1"
else
    echo "F1.txt khong ton tai trong thu muc chu U1"
fi

echo "test 2" > /home/U1/f1.txt
if [ -e /home/U1/f1.txt ];
then
    echo "f1.txt co ton tai trong thu muc chu U1"
else
    echo "f1.txt khong ton tai trong thu muc chu U1"
fi

echo -e "Thuoc tinh tap tin F1.txt:" 
ls -l /home/U1/F1.txt

echo -e "Thuoc tinh tap tin f1.txt:" 
ls -l /home/U1/f1.txt

# Ca 2 file F1.txt f1.txt deu ton tai vi Linux phan biet chu hoa va chu thuong