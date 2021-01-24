#!/bin/bash
PATH_PROJECTS=/home/devlogex/Projects

if [ $# -gt 0 ]
then
    for i in "$@" 
    do
        echo "Run $i"
        docker container stop $i
        docker container rm $i
        cd $PATH_PROJECTS/docker/service
        sh $i/run.sh
    done
else
    docker network create product_workspace

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

    cd $PATH_PROJECTS/docker/env
    sh redis/run.sh
    sh postgres/run.sh

    cd $PATH_PROJECTS/docker/service
    sh dbservice/run.sh
    sh configservice/run.sh
    sh strategyservice/run.sh
    sh devservice/run.sh
    sh actionservice/run.sh
    sh reportservice/run.sh
    sh fe/run.sh
fi