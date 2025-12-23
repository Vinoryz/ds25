#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 1  "PUT color red"
python3 ./kvclient.py --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 2   "GET color"
python3 ./kvclient.py  --nodes 192.168.122.2:8002,192.168.122.3:8003,192.168.122.4:8004,192.168.122.5:8005 cmd --node 1   "GET color"