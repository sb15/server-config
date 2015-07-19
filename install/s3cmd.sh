#!/bin/bash

apt-get install python-setuptools

mkdir -p /tmp/s3cmd-build

cd /tmp/s3cmd-build
git clone https://github.com/s3tools/s3cmd
cd s3cmd
python setup.py install

rm -rf /tmp/s3cmd-build