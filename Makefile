up : build
	docker-compose -f ./srcs/docker-compose.yaml up

down :
	docker-compose -f ./srcs/docker-compose.yaml down

build : down
	docker system prune --all --force
	docker-compose -f ./srcs/docker-compose.yaml build