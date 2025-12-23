#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 1  "PUT color blue"
sleep 1
# GET from node 2
python3 ./kvclient.py  --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 2   "GET color"
sleep 1

# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 race  "PUT color blue" "PUT color red"
sleep 1

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005  getall color
sleep 1




