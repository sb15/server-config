#!/bin/bash

fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile


if grep -q "/swapfile" /etc/fstab; then
  printf ""
else
  printf "/swapfile   none    swap    sw    0   0\n" >> /etc/fstab
fi

sysctl vm.swappiness=10

if grep -q "vm.swappiness" /etc/sysctl.conf; then
  printf ""
else
  printf "vm.swappiness = 10\n" >> /etc/sysctl.conf
fi

sysctl vm.vfs_cache_pressure=50

if grep -q "vm.vfs_cache_pressure" /etc/sysctl.conf; then
  printf ""
else
  printf "vm.vfs_cache_pressure = 50\n" >> /etc/sysctl.conf
fi