#!/bin/bash

docker run -d \
    --name reportservice \
    --hostname reportservice \
    --network product_workspace \
    -v "/home/$USER/.m2":/root/.m2 \
    -p 8006:8006 \
    -p 9006:9006 \
devlogex/reportservice
