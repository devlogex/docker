#!/bin/bash

docker run -d \
    --name configservice \
    --hostname configservice \
    --network product_workspace \
    -p 8003:8003 \
    -p 9003:9003 \
configservice
