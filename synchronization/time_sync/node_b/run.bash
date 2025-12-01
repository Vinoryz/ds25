#!/bin/bash

python3 peer_node.py \
	  --name B --listen 0.0.0.0 5003 \
	  --peers A@192.168.0.2:5002 C@192.168.0.4:5004 D@192.168.0.5:5005 \
	  --logger 192.168.0.6 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from B"

