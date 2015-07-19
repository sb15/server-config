#!/bin/bash

if grep -q "http://nginx.org" /etc/apt/sources.list; then
  printf ""
else
  codename=`lsb_release -c | cut -f2`
  printf "\ndeb http://nginx.org/packages/debian/ %s nginx\n" "$codename" >> /etc/apt/sources.list
  printf "deb-src http://nginx.org/packages/debian/ %s nginx\n" "$codename" >> /etc/apt/sources.list
fi

wget -P /tmp http://nginx.org/keys/nginx_signing.key
apt-key add /tmp/nginx_signing.key
unlink /tmp/nginx_signing.key

apt-get update
apt-get install nginx
