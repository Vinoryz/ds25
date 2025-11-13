#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5002 \
	  --peers B@10.21.86.105:5003 C@10.21.86.105:5004 D@10.21.86.105:5005 \
	  --logger 10.21.86.105 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A"

