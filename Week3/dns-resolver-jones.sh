#!/bin/bash

#Code/Script Credit: Devin Paden or Mackenzie Marsocci

ip=$1
dns=$2


echo "DNS resolution for $1"

for x in $(seq 1 254); do 
  nslookup "$dns.$x" "$ip" | grep name
    
   
done
