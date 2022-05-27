# Tagger_Local_Env

Build the image
`docker build -t tagger-api:vX .`

Run container from docker compose
`docker-compose up`

Tag and push the image to docker hub
```
docker tag tagger-api:vX oldcoyote03/tagger-api:vX
docker tag tagger-api:vX oldcoyote03/tagger-api:latest
docker push --all-tags oldcoyote03/tagger-api
```

NOTE: On MacOS, [AirPlay uses port 5000 and 7000](https://developer.apple.com/forums/thread/682332)

Remove services
`docker-compose down`
