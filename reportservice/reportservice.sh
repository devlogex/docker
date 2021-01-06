#!/bin/bash

docker run -d \
    --name reportservice \
    --hostname reportservice \
    --network product_workspace \
    -p 8006:8006 \
    -p 9006:9006 \
reportservice
