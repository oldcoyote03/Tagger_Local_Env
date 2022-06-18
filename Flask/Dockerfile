# syntax=docker/dockerfile:1.0
FROM python:3.8.12-slim-buster
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git
RUN python -m pip install --upgrade pip
WORKDIR /tmp
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /
ADD https://api.github.com/repos/oldcoyote03/Tagger_App/git/refs/heads/develop version.json
RUN git clone https://github.com/oldcoyote03/Tagger_App.git app
WORKDIR /app
RUN git checkout "develop"
CMD [ "python", "./api.py"]