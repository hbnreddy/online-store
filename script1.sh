#!/bin/bash
echo "apt repo update"
apt update
#echo "install nginx"
#apt install nginx -y &> output.txt
#echo "start nginx"
#service nginx start
echo "unmask apache2"
systemctl unmask apache2
echo "restart apache2"
service apache2 restart
