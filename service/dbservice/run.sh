#!/bin/bash


docker run -d \
    --name dbservice \
    --hostname dbservice \
    --network product_workspace \
    -v /home/$USER/.m2:/root/.m2 \
    -p 9000:9000 \
    -p 8000:8000 \
devlogex/dbservice
