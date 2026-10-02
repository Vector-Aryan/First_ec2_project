#! /bin/bash
yum install -y nginx
systemctl start nginx
systemctl enable nginx
echo "Hello Nginx i am here" > /usr/share/nginx/html/index.html