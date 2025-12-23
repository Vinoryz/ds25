#!/bin/bash

python3 ./kv.py --id 1 --tcp 8002 --udp 8102 --peers 192.168.122.3:8003=2,192.168.122.4:8004=3,192.168.122.5:8005=4 --logger-addr 192.168.122.6:8900 --numnodes 4 --use-mutex 1 
