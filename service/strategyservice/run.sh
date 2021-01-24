#!/bin/bash

docker run -d \
    --name strategyservice \
    --hostname strategyservice \
    --network product_workspace \
    -p 8002:8002 \
strategyservice
