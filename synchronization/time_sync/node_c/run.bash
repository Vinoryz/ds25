#!/bin/bash

python3 peer_node.py \
	  --name C --listen 0.0.0.0 5004 \
	  --peers A@localhost:5002 B@localhost:5003 D@localhost:5005 \
	  --logger localhost 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from C"