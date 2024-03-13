FROM debian:bullseye

RUN apt-get update && apt-get install nginx -y && \
	apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/certs/server.key -out /etc/ssl/certs/server.cert \
	-subj "/CN=yloutfi.42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]