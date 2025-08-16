FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

COPY /src .

RUN apk add --no-cache shadow && usermod -u 1000 www-data

RUN docker-php-ext-install pdo pdo_mysql