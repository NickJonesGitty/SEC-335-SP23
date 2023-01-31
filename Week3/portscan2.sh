#!/bin/bash

#Code/Script Credit: Devin Paden or Mackenzie Marsocci

ip=$1
port=$2


echo "ip,port"

for x in $(seq 1 254); do 
  timeout .1 bash -c "echo >/dev/tcp/$ip.$x/$port" 2>/dev/null &&
    echo "$ip.$x,$port"
   
done
