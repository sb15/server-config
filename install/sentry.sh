#!/bin/bash

apt-get install \
python-pip \
libxml2-dev \
libxslt1-dev \
python-dev \
python-mysqldb \
python-dev \
build-essential \
libmysqlclient-dev \
python-setuptools

pip install sentry
pip install kombu
pip install pytz
pip install billiard

apt-get install libffi-dev