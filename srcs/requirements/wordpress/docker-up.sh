#! /bin/bash

docker image rm test:v1

docker build -t test:v1 /goinfre/yloutfi/Inception/srcs/requirements/wordpress

docker run -it --rm --name test test:v1 bash
