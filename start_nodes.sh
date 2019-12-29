#!/bin/bash
port=7000
i=0
nodes=6
while [ $((i < nodes)) != "0" ]; do
    echo "$i $port"
    redis-server config/redis-$port.conf
    echo "start up redis node on port $port"
    i=$((i+1))
    port=$((port+1))
done
exit 0
