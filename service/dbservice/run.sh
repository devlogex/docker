#!/bin/bash


docker run -d \
    --name dbservice \
    --hostname dbservice \
    --network product_workspace \
    -p 9000:9000 \
    -p 8000:8000 \
dbservice
