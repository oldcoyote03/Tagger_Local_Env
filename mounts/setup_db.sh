#!/bin/sh
echo "Wait for services to initialize"
sleep 10

docker ps
docker exec roach1 ./cockroach init --insecure

echo "DB cluster to initialized"
sleep infinity
