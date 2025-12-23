#!/bin/bash

python3 ./kv.py --id 2 --tcp 8003 --udp 8103 --peers 192.168.122.2:8002=1,192.168.122.4:8004=3,192.168.122.5:8005=4 --logger-addr 192.168.122.6:8900 --numnodes 4 --use-mutex 0