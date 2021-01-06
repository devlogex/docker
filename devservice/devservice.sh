#!/bin/bash

docker run -d \
    --name devservice \
    --hostname devservice \
    --network product_workspace \
    -p 8005:8005 \
    -p 9005:9005 \
devservice
