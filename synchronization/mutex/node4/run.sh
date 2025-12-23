#!/bin/bash

python3 ./kv.py --id 4 --tcp 8005 --udp 8105 --peers 192.168.122.2:8002=1,192.168.122.3:8003=2,192.168.122.4:8004=3 --logger-addr 192.168.122.6:8900 --numnodes 4 --use-mutex 0