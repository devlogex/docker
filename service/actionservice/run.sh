#!/bin/bash

docker run -d \
    --name actionservice \
    --hostname actionservice \
    --network product_workspace \
    -v "/home/$USER/.m2":/root/.m2 \
    -p 8004:8004 \
    -p 9004:9004 \
devlogex/actionservice
