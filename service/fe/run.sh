#!/bin/bash

docker run -d \
    --name fe \
    --hostname fe \
    --network product_workspace \
    -p 3001:3001 \
devlogex/fe
