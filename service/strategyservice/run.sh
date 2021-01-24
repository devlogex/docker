#!/bin/bash

docker run -d \
    --name strategyservice \
    --hostname strategyservice \
    --network product_workspace \
    -v "/home/$USER/.m2":/root/.m2 \
    -p 8002:8002 \
devlogex/strategyservice
