#!/bin/sh
echo "Wait for services to initialize"
sleep 10

docker ps
docker exec roach1 ./cockroach init --insecure

echo "Wait for DB cluster to initialize"
sleep 10

docker exec roach1 ./cockroach sql --insecure --file /tmp/schema.sql

echo "Wait for DB schema to initialize"
#sleep infinity
sleep 5

#apt-get -y install net-tools
#netstat -tulnp | grep :5000
#kill 

#docker exec -it flask-api /bin/bash
#apt-get -y install nano
docker exec -d flask-api python /app/api.py

echo "Wait for API to deploy"
sleep 5

#docker exec -it db-init /bin/sh
apk add --no-cache curl

echo "Wait for curl to install"
sleep 5

#curl -H "Content-Type: application/json" -X GET http://flask-api:5000/hello
curl -H "Content-Type: application/json" \
    -X GET http://flask-api:5000/hello
sleep 5

echo "Setup complete"
sleep infinity
