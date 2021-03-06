#!/bin/sh
apk add --no-cache curl
echo "curl installed"

echo "Wait for services to initialize"
sleep 7

docker ps
docker exec roach1 ./cockroach init --insecure
docker exec -d flask-api apt-get -y install nano net-tools

echo "Services initialized"
echo "Wait for DB cluster to initialize"
sleep 4

docker exec roach1 ./cockroach sql --insecure --file /tmp/schema.sql

echo "DB schema initialized"
#sleep infinity
sleep 2

#docker exec -it flask-api /bin/bash
#netstat -tulnp | grep :5000
#kill 

#docker exec -it db-init /bin/sh
#docker exec flask-api python /tagger_api/run.py
docker exec -d flask-api python /tagger_api/run.py
sleep 2
echo "API deployed"


sleep 2

#curl -H "Content-Type: application/json" -X GET http://flask-api:5000/bookmarks
curl -H "Content-Type: application/json" \
    -X GET http://flask-api:5000/bookmarks
sleep 2

echo "Setup complete"
sleep infinity
