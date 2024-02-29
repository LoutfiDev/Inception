FROM debian:buster

RUN apt -yqq update; apt -yqq upgrade
RUN apt -yqq install php-fpm php-mysql
RUN apt -yqq install php-fpm php-mysql php-gd php-cli php-curl \
	php-mbstring php-zip php-opcache php-xml php-mysqli

RUN mkdir -p /var/www/html/

WORKDIR /var/www/html/

RUN wget https://wordpress.org/latest.tar.gz && \
	tar -xvzf latest.tar.gz

RUN  chown -R nginx: /var/www/html/