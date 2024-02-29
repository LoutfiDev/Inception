#! /bin/bash

docker image rm test:v1

docker build -t test:v1 /goinfre/yloutfi/Inception/srcs/requirements/mariadb

docker run -it --rm -p 8080:80 --name test test:v1 bash
