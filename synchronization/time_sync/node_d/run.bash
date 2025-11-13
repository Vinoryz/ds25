#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 5005 \
	  --peers A@10.21.86.105:5002 B@10.21.86.105:5003 C@10.21.86.105:5004 \
	  --logger 10.21.86.105 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from D"
