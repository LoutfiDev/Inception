FROM debian:bullseye

RUN apt-get -y upgrade && apt-get -y update && \
	apt-get -y install php7.3 php-fpm \
	php-mysql mariadb-client wget

RUN mkdir -p /var/www/wordpress

WORKDIR /var/www/wordpress

RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x /usr/local/bin/wp && \
	wp --allow-root core download && \
	sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = wordpress:9000/g' /etc/php/7.4/fpm/pool.d/www.conf


COPY ./conf/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

WORKDIR /tmp

CMD ["./setup.sh"]
