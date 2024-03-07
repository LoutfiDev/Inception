#! /bin/bash

docker image rm test:v1

docker build -t test:v1 /home/soulang/Desktop/Inception/srcs/requirements/nginx

docker run --rm -p 8080:80 --name test test:v1
