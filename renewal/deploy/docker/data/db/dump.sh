#!/bin/sh

docker exec -it db-r2 mysqldump -u MYSQL_USERNAME -pMYSQL_PASSWORD keeper > keeper_dump_$(date +%Y%m%d).sql
docker cp db-r2:keeper_dump_$(date +%Y%m%d).sql .
