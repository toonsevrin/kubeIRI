#!/bin/bash

$neighbors
for buddy in $(cat /iri/conf/neighbors); do
  neighbors="$buddy $neighbors"
done
neighbors=${neighbors::-1}

exec java -XX:+DisableAttachMechanism -Xmx4g -Xms4g -jar /iri/target/iri-1.2.2.jar -p 14265 -u 14800 -t 15600 -n "$neighbors" --remote "$@"
