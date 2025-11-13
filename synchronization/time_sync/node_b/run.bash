#!/bin/bash

python3 peer_node.py \
	  --name B --listen 0.0.0.0 5003 \
	  --peers A@localhost:5002 C@localhost:5004 D@localhost:5005 \
	  --logger localhost 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from B"

