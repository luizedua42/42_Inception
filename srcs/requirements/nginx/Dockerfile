FROM debian:oldstable

RUN apt update && apt install -y nginx \
	vim \
	wget
RUN mkdir /etc/nginx/ssl
RUN apt install -y openssl
