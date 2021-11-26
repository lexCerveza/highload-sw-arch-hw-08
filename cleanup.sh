#! /bin/bash

docker-compose down
docker volume rm mysql.data
rm -rf ./my-sql/users