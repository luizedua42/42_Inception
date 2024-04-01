FROM debian:oldstable

RUN apt update && apt instll -y wget \
	php7.3 \
	php-fpm \
	php-mysql \
	mariadb-client \
	vim

RUN wget https://wordpress.org/latest.tar.gz -P var/www \
RUN cd /var/www && tar -xvf latest.tar.gz && rm latest.tar.gz
RUN chown -R root:root /var/www/wordpress
