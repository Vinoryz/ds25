#!/bin/bash

python3 peer_node.py \
	  --name C --listen 0.0.0.0 5004 \
	  --peers A@10.21.86.105:5002 B@10.21.86.105:5003 D@10.21.86.105:5005 \
	  --logger 10.21.86.105 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from C"