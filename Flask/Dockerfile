# syntax=docker/dockerfile:1.0
FROM python:3.8.12-slim-buster
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git
WORKDIR /tmp
COPY requirements.txt .
RUN pip install -r requirements.txt
#CMD [ "python", "./app.py"]
CMD [ "sleep", "infinity" ]