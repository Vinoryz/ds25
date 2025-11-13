#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5002 \
	  --peers B@localhost:5003 C@localhost:5004 D@localhost:5005 \
	  --logger localhost 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A"

