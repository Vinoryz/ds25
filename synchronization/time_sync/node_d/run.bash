#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 5005 \
	  --peers A@localhost:5002 B@localhost:5003 C@localhost:5004 \
	  --logger localhost 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from D"
