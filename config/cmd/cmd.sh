#!/bin/bash

NC='\033[0m'
DEFAULT_COLOR='\033[0;39m'
BLACK_COLOR='\033[0;30m'
RED_COLOR='\033[0;31m'
GREEN_COLOR='\033[0;32m'
YELLOW_COLOR='\033[0;33m'
BLUE_COLOR='\033[0;34m'
MAGENTA_COLOR='\033[0;35m'
CYAN_COLOR='\033[0;36m'
LIGHT_GRAY_COLOR='\033[0;37m'
DARK_GRAY_COLOR='\033[0;90m'
LIGHT_RED_COLOR='\033[0;91m'
LIGHT_GREEN_COLOR='\033[0;92m'
LIGHT_YELLOW_COLOR='\033[0;93m'
LIGHT_BLUE_COLOR='\033[0;94m'
LIGHT_MAGENTA_COLOR='\033[0;95m'
LIGHT_CYAN_COLOR='\033[0;96m'
WHITE_COLOR='\033[0;97m'

# 101 - nginx restart 201 php-fpm restart

## check exist
# check run
# nginx (version) - running     nginx - stopped    nginx - not installed
# 
# not installed - list at bottom
# dpkg --get-selections | grep -v deinstall | grep -P "^zlib1g"
# whereis mysql-server

#nginx - running
# 1.8.0

# nginxVersion="$(nginx -v 2>&1)"
# nginxVersion=`echo $nginxVersion|grep -Po "\d+\.\d+\.\d+"`
# echo $nginxVersion

# if [[ -z "$REPO" ]]; then
# echo "111$REPO"
#else
#    echo 222
#fi


printf "${GREEN_COLOR}nginx\n"
printf "    1) reload\n"
printf "    2) restart\n"
printf "    3) start\n"
printf "    4) stop\n"
printf "    5) configtest\n"
printf "${NC}\n"

printf "${YELLOW_COLOR}php-fpm\n"
printf "    6) restart\n"
printf "    7) start\n"
printf "    8) stop\n"
printf "${NC}\n"

printf "${LIGHT_BLUE_COLOR}mysql\n"
printf "    9) restart\n"
printf "    10) start\n"
printf "    11) stop\n"
printf "${NC}\n"

printf "${CYAN_COLOR}memcached\n"
printf "    12) restart\n"
printf "    13) start\n"
printf "    14) stop\n"
printf "${NC}\n"

printf "${LIGHT_CYAN_COLOR}redis\n"
printf "    15) restart\n"
printf "    16) start\n"
printf "    17) stop\n"
printf "${NC}\n"

printf "${MAGENTA_COLOR}datadog-agent\n"
printf "    18) start\n"
printf "    19) stop\n"
printf "${NC}\n"

read -e -p "Select operation: " OPERATION

printf "\n"

# commands here
case $OPERATION in
    1) 	
		/bin/sh /config/cmd/nginx-reload.sh
	;;
    2) 
		/bin/sh /config/cmd/nginx-restart.sh
	;;	
    3) 
		/bin/sh /config/cmd/nginx-start.sh
	;;	
    4) 
		/bin/sh /config/cmd/nginx-stop.sh
	;;
    5) 
		/bin/sh /config/cmd/nginx-configtest.sh
	;;
	6) 
		/bin/sh /config/cmd/php-fpm-restart.sh
	;;
	7) 
		/bin/sh /config/cmd/php-fpm-start.sh
	;;
	8) 
		/bin/sh /config/cmd/php-fpm-stop.sh
	;;
	9) 
		/bin/sh /config/cmd/mysql-restart.sh
	;;
	10) 
		/bin/sh /config/cmd/mysql-start.sh
	;;
	11) 
		/bin/sh /config/cmd/mysql-stop.sh
	;;
	12) 
		/bin/sh /config/cmd/memcached-restart.sh
	;;
	13) 
		/bin/sh /config/cmd/mysql-start.sh
	;;
	14) 
		/bin/sh /config/cmd/mysql-stop.sh
	;;
	15) 
		/bin/sh /config/cmd/redis-restart.sh
	;;
	16) 
		/bin/sh /config/cmd/redis-start.sh
	;;
	17) 
		/bin/sh /config/cmd/redis-stop.sh
	;;
	18) 
		/bin/sh /config/cmd/datadog-agent-start.sh
	;;
	19) 
		/bin/sh /config/cmd/datadog-agent-stop.sh
	;;
    *)
	echo "No select"
	;;
esac
