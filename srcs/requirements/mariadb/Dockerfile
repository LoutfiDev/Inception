FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/setup_mariadb.sh /tmp/setup_mariadb.sh

RUN chmod +x /tmp/setup_mariadb.sh

WORKDIR /tmp

CMD ./setup_mariadb.sh

