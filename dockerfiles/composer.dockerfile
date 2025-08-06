FROM composer:latest

WORKDIR /var/www/html

RUN apk add --no-cache shadow && usermod -u 1000 www-data

ENTRYPOINT ["composer"]