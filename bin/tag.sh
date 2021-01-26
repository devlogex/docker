#!/bin/bash

docker image rmi devlogex/dbservice
docker image rmi devlogex/configservice
docker image rmi devlogex/strategyservice
docker image rmi devlogex/devservice
docker image rmi devlogex/actionservice
docker image rmi devlogex/reportservice
docker image rmi devlogex/fe

docker tag dbservice devlogex/dbservice
docker tag configservice devlogex/configservice
docker tag strategyservice devlogex/strategyservice
docker tag devservice devlogex/devservice
docker tag actionservice devlogex/actionservice
docker tag reportservice devlogex/reportservice
docker tag fe devlogex/fe