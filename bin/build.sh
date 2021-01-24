#!/bin/bash
PATH_PROJECTS=/home/devlogex/Projects

if [ $# -gt 0 ]
then
    for i in $@ 
    do
        echo `Build $i`
        cd $PATH_PROJECTS/$i && docker build -t $i .
    done
else
    cd $PATH_PROJECTS/docker/env/maven && sh build.sh
    cd $PATH_PROJECTS/docker/env/pw_env && sh build.sh
    cd $PATH_PROJECTS/docker/env/redis && sh build.sh

    cd $PATH_PROJECTS/dbservice && docker build -t dbservice .
    cd $PATH_PROJECTS/config-service && docker build -t configservice .
    cd $PATH_PROJECTS/strategy && docker build -t strategyservice .
    cd $PATH_PROJECTS/dev-service && docker build -t devservice .
    cd $PATH_PROJECTS/action-service && docker build -t actionservice .
    cd $PATH_PROJECTS/report-service && docker build -t reportservice .
    cd $PATH_PROJECTS/ToolProductManagermentUI && docker build -t fe .
fi