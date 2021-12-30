#!/bin/sh
echo "Pulling postgres"
sudo docker pull postgres 
echo "Starting PSQL container with port 5432"
sudo run --name database -e POSTGRES_PASSWORD=123 -p 5432:5432 -d postgres 

echo "Pulling redis"
sudo docker pull redis
echo "Starting redis with port 6379"
docker run --name cache -p 6379:6379 -d redis

echo "Pulling Elastic 7.16.2"
sudo docker pull elasticsearch:7.16.2
echo "Starting Elastic 7.16.2 with ports 9200 & 9300"
docker run -d --name elasticsearch  -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.16.2

