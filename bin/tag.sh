#!/bin/bash

docker image rm devlogex/dbservice
docker image rm configservice devlogex/configservice
docker image rm strategyservice devlogex/strategyservice
docker image rm devservice devlogex/devservice
docker image rm actionservice devlogex/actionservice
docker image rm reportservice devlogex/reportservice
docker image rm fe devlogex/fe

docker tag dbservice devlogex/dbservice
docker tag configservice devlogex/configservice
docker tag strategyservice devlogex/strategyservice
docker tag devservice devlogex/devservice
docker tag actionservice devlogex/actionservice
docker tag reportservice devlogex/reportservice
docker tag fe devlogex/fe