#!/bin/bash

docker run -d \
    --name configservice \
    --hostname configservice \
    --network product_workspace \
    -v "/home/$USER/.m2":/root/.m2 \
    -p 8003:8003 \
    -p 9003:9003 \
devlogex/configservice
