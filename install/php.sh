#!/bin/bash

apt-get install \
php5 \
php5-fpm \
php5-mysql \
php5-memcached \
php5-curl \
php5-gd \
php5-mcrypt



apt-get --purge remove apache2*
rm -fr /etc/apache2