#!/bin/bash

# swap
cat /proc/sys/vm/vfs_cache_pressure  - 50
cat /proc/sys/vm/swappiness - 10

# /etc/rsyslog.conf
#cron.* /var/log/cron.log


# cat /proc/sys/fs/file-max
# sysctl -w fs.file-max=524288
# update-alternatives --config editor