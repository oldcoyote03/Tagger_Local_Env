# Tagger_Local_Env

- Build the image
% docker build -t tagger-api:vX .

- Tag and push the image to docker hub
% docker tag tagger-api:vX oldcoyote03/tagger-api:vX
% docker tag tagger-api:vX oldcoyote03/tagger-api:latest
% docker push --all-tags oldcoyote03/tagger-api