#!/bin/bash

RED_COLOR='\033[0;31m'
GREEN_COLOR='\033[0;32m'
NC='\033[0m'

printf "mysql: ";
if ps aux | grep "[m]ysql" > /dev/null; then
  printf "${GREEN_COLOR}running"
else
  printf "${RED_COLOR}stopped"
fi

printf "${NC}\n";


printf "nginx: ";
if ps aux | grep "[n]ginx" > /dev/null; then
  printf "${GREEN_COLOR}running"
else
  printf "${RED_COLOR}stopped"
fi

printf "${NC}\n";


printf "php-fpm: ";
if ps aux | grep "[p]hp-fpm" > /dev/null; then
  printf "${GREEN_COLOR}running"
else
  printf "${RED_COLOR}stopped"
fi

printf "${NC}\n";


printf "memcached: ";
if ps aux | grep "[m]emcached" > /dev/null; then
  printf "${GREEN_COLOR}running"
else
  printf "${RED_COLOR}stopped"
fi

printf "${NC}\n";


#printf "sentry: ";
#if ps aux | grep "[S]entry" > /dev/null; then
#  printf "${GREEN_COLOR}running"
#else
#  printf "${RED_COLOR}stopped"
#fi

#printf "${NC}\n";


printf "datadog-agent: ";
if ps aux | grep "[d]d-agent" > /dev/null; then
  printf "${GREEN_COLOR}running"
else
  printf "${RED_COLOR}stopped"
fi

printf "${NC}\n";