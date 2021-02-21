#!/bin/bash

docker run --publish 5432:5432 \
    --name postgres \
    --hostname postgres \
    --network product_workspace \
    -e  POSTGRES_DB=postgres \
    -e  PGDATA=/data/pgdata \
    -e  POSTGRES_USER=postgres \
    -e  POSTGRES_PASSWORD=123123123 \
    -v /data/pgdata:/data/pgdata \
  --detach \
devlogex/postgres
