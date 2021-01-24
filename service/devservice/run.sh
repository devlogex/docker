#!/bin/bash

docker run -d \
    --name devservice \
    --hostname devservice \
    --network product_workspace \
    -v "/home/$USER/.m2":/root/.m2 \
    -p 8005:8005 \
    -p 9005:9005 \
devlogex/devservice
