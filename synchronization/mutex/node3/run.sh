#!/bin/bash

python3 ./kv.py --id 3 --tcp 8004 --udp 8104 --peers 192.168.122.2:8002=1,192.168.122.3:8003=2,192.168.122.5:8005=4 --logger-addr 192.168.122.6:8900 --numnodes 4 --use-mutex 1 
