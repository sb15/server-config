#!/bin/bash

/etc/init.d/datadog-agent stop
/etc/init.d/datadog-agent start
sleep 5
/etc/init.d/datadog-agent info