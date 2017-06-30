#!/bin/bash
if [ -z "$NEIGHBORS" ]; then
    echo "Need to set STATE"
    exit 1
fi  

exec java -XX:+DisableAttachMechanism -Xmx4g -Xms4g -jar /iri/target/iri-1.2.2.jar -p 14265 -u 14800 -t 15600 -n "$NEIGHBORS" --remote --remote-limit-api "addNeighbors, removeNeighbors" "$@"
