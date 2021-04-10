#!/bin/bash
apt update
apt install nginx -y &> output.txt
service nginx start
