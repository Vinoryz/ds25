#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5002 \
	  --peers B@192.168.0.3:5003 C@192.168.0.4:5004 D@192.168.0.5:5005 \
	  --logger 192.168.0.6 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A"

