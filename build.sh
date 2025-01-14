#!/bin/bash

./up.sh

sleep 15

## Config servers setup
echo 'Config servers setup'
docker exec -it mongodbdocker_mongo-configserver-01_1 sh -c "mongosh --port 27017 < /mongo-configserver.init.js"

## Shard servers setup
echo 'Shard servers setup'
docker exec -it mongodbdocker_mongo-shard-01a_1 sh -c "mongosh --port 27017 < /mongo-shard-01.init.js"
docker exec -it mongodbdocker_mongo-shard-02a_1 sh -c "mongosh --port 27017 < /mongo-shard-02.init.js"
docker exec -it mongodbdocker_mongo-shard-03a_1 sh -c "mongosh --port 27017 < /mongo-shard-03.init.js"

## Apply sharding configuration
sleep 5
echo 'Apply sharding configuration'
docker exec -it mongodbdocker_mongo-router-01_1 sh -c "mongosh --port 27017 < /mongo-sharding.init.js"

# Enable admin account
# echo 'Enable admin account'
# docker exec -it mongodbdocker_mongo-router-01_1 sh -c "mongosh --port 27017 < /mongo-auth.init.js"
