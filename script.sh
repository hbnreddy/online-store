#!/bin/bash
apt update
apt install apache2 -y &> output.txt
service apache2 start
