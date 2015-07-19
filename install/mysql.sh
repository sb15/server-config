#!/bin/bash

apt-get install  \
libmysqlclient-dev \
mysql-server

mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root -p mysql

#skip-character-set-client-handshake
#collation-server=utf8_unicode_ci
#character-set-server=utf8
#default-time-zone='Europe/Moscow'