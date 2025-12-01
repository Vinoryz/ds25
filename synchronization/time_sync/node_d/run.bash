#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 5005 \
	  --peers A@192.168.0.2:5002 B@192.168.0.3:5003 C@192.168.0.4:5004 \
	  --logger 192.168.0.6 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from D"
