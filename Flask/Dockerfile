# syntax=docker/dockerfile:1.0
FROM python:3.8.12-slim-buster
WORKDIR /tmp
COPY requirements.txt .
RUN pip install -r requirements.txt
#CMD [ "python", "./app.py"]
CMD [ "sleep", "infinity" ]