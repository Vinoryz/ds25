#!/bin/bash

python3 peer_node.py \
	  --name C --listen 0.0.0.0 5004 \
	  --peers A@192.168.122.2:5002 B@192.168.122.3:5003 D@192.168.122.5:5005 \
	  --logger 192.168.122.6 5900 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from C"