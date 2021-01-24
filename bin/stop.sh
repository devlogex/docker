#!/bin/bash
PATH_PROJECTS=/home/devlogex/Projects

docker network rm product_workspace

docker container stop pw_redis
docker container stop postgres
docker container stop dbservice
docker container stop configservice
docker container stop strategyservice
docker container stop devservice
docker container stop actionservice
docker container stop reportservice
docker container stop fe

docker container rm pw_redis
docker container rm postgres
docker container rm dbservice
docker container rm configservice
docker container rm strategyservice
docker container rm devservice
docker container rm actionservice
docker container rm reportservice
docker container rm fe