#!/bin/bash
# move to /usr/src/

apt-get install \
gcc \
php5-dev \
libpcre3-dev

mkdir -p /tmp/phalcon-build

cd /tmp/phalcon-build
git clone --depth=1 git://github.com/phalcon/cphalcon.git
cd cphalcon/build
./install

rm -rf /tmp/phalcon-build