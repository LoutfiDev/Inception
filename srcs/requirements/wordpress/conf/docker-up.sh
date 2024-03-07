#! /bin/bash

docker image rm test:v1

docker build -t test:v1 /home/soulang/Desktop/Inception/srcs/requirements/wordpress

docker run --rm --name test test:v1
