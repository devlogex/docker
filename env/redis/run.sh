#!/bin/bash

docker run -d \
    --name pw_redis \
    --hostname pw_redis \
    --network product_workspace \
    -p 6379:6379 \
pw_redis
