#!/bin/bash
PATH_PROJECTS=/home/devlogex/Projects
MAVEN_PATH=/home/devlogex/.m2

if [ $# -gt 0 ]
then
    for i in $@ 
    do
        echo "Build $i"
        cd $PATH_PROJECTS/$i && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t $i .
    done
else
    # cd $PATH_PROJECTS/docker/env/maven && sh build.sh
    echo "Build pw_env"
    cd $PATH_PROJECTS/docker/env/pw_env && sh build.sh
    echo "Build redis"
    cd $PATH_PROJECTS/docker/env/redis && sh build.sh

    echo "Build dbservice"
    cd $PATH_PROJECTS/dbservice && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t dbservice .
    echo "Build config-service"
    cd $PATH_PROJECTS/config-service && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t configservice .
    echo "Build strategy"
    cd $PATH_PROJECTS/strategy && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t strategyservice .
    echo "Build dev-service"
    cd $PATH_PROJECTS/dev-service && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t devservice .
    echo "Build action-service"
    cd $PATH_PROJECTS/action-service && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t actionservice .
    echo "Build report-service"
    cd $PATH_PROJECTS/report-service && mvn -s $MAVEN_PATH/settings.xml clean package -DskipTests && docker build -t reportservice .
    echo "Build fe"
    cd $PATH_PROJECTS/ToolProductManagermentUI && docker build -t fe .
fi