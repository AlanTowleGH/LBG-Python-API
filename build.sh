#!/bin/bash

docker build -t automated-image:latest .
docker push automated-image:latest

docker stop docker start auto-container
docker rm auto-container

docker run -d -p 8080:8080 --name auto-container automated-image: