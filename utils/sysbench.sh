#!/bin/bash

# memory
sysbench --test=memory --memory-block-size=1M --memory-total-size=10G run

# cpu
sysbench --test=cpu --cpu-max-prime=20000 run

# io
cd /tmp
sysbench --test=fileio --file-total-size=5G prepare
sysbench --test=fileio --file-total-size=5G --file-test-mode=rndrw --init-rng=on --max-time=300 --max-requests=0 run
sysbench --test=fileio --file-total-size=5G cleanup
