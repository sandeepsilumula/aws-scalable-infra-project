#!/bin/bash
apt-get update -y
apt-get install nginx git -y
systemctl start nginx
systemctl enable nginx
cd /var/www/html/
rm -rf index.html
git clone https://github.com/Ironhack-Archive/online-clone-amazon.git
cp -r online-clone-amazon/* .
rm -rf online-clone-amazon
chown -R www-data:www-data /var/www/html/
