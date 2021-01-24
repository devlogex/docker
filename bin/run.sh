#!/bin/bash

docker network create product_workspace

docker container restart pw_redis
docker container restart postgres

docker container stop dbservice
docker container stop configservice
docker container stop strategyservice
docker container stop devservice
docker container stop actionservice
docker container stop reportservice

docker container remove dbservice
docker container remove configservice
docker container remove strategyservice
docker container remove devservice
docker container remove actionservice
docker container remove reportservice

cd ../service
sh dbservice/run.sh
sh configservice/run.sh
sh strategyservice/run.sh
sh devservice/run.sh
sh actionservice/run.sh
sh reportservice/run.sh