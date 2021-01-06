#!/bin/bash

docker run -d \
    --name actionservice \
    --hostname actionservice \
    --network product_workspace \
    -p 8004:8004 \
    -p 9004:9004 \
actionservice
