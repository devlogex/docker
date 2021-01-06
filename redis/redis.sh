#!/bin/bash


docker run -d \
    --name redis \
    --hostname redis \
    --network product_workspace \
    -p 6379:6379 \
my_redis
