#!/bin/bash
docker tag dbservice devlogex/dbservice
docker tag configservice devlogex/configservice
docker tag strategyservice devlogex/strategyservice
docker tag devservice devlogex/devservice
docker tag actionservice devlogex/actionservice
docker tag reportservice devlogex/reportservice
docker tag fe devlogex/fe