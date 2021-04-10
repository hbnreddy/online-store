#!/bin/bash
echo "apt repo update"
apt update
echo "remove nginx"
apt remove apache2 -y &> output.txt
#echo "start nginx"
#service nginx start
echo "unmask apache2"
systemctl unmask apache2
echo "restart apache2"
service apache2 restart

echo "myscript file"
cat script1.sh
