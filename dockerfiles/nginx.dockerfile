FROM nginx:stable-alpine
WORKDIR /var/www/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY /src .
