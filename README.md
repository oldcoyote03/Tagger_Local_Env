# Tagger_Local_Env

- Build the image
% docker build -t tagger-api:vX .

- Run and test container
% docker run -d -p 5000:5000 --name tagger-vX tagger-api:vX
% docker exec -it tagger-vX /bin/bash

- Tag and push the image to docker hub
% docker tag tagger-api:vX oldcoyote03/tagger-api:vX
% docker tag tagger-api:vX oldcoyote03/tagger-api:latest
% docker push --all-tags oldcoyote03/tagger-api

- NOTE: On MacOS, AirPlay uses port 5000 and 7000
Link: https://developer.apple.com/forums/thread/682332

