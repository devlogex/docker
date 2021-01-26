#!/bin/bash

if [ $# -gt 0 ]; then
    for i in $@; do
        echo "Push $i"
        docker push devlogex/$i
    done
else
    echo "Push dbservice"
    docker push devlogex/dbservice
    echo "Push configservice"
    docker push devlogex/configservice
    echo "Push strategy"
    docker push devlogex/strategyservice
    echo "Push devservice"
    docker push devlogex/devservice
    echo "Push actionservice"
    docker push devlogex/actionservice
    echo "Push reportservice"
    docker push devlogex/reportservice
fi
