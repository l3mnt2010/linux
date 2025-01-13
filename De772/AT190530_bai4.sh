#!/bin/bash

# Tao tkhoan User123 pass 2711
useradd -m -d /home/User123 -s /bin/bash User123

echo "User123:2711" | chpasswd

if ! getent group G123 > /dev/null; then
  groupadd G123
fi

mkdir -p /KMA

echo "Truong Ngoc Lam - AT190530" > /KMA/test2.txt

ls -l /KMA/test2.txt

chmod 755 /KMA/test2.txt

su User123 << EOF
gzip -c /KMA/test2.txt > /home/User123/filenen.gz 
EOF

ps aux
ps -e