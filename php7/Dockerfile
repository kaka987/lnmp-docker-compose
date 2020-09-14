######
# See: https://hub.docker.com/_/php/
######

FROM php:7.4-fpm
MAINTAINER Young <zhy_0875@gmail.com>

RUN mkdir -p /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

######
# You can install php extensions using docker-php-ext-install
######
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libzip-dev \
        zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) mysqli \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install -j$(nproc) opcache \
    && docker-php-ext-install -j$(nproc) pdo_mysql
COPY redis.tar.gz /tmp/
RUN tar xfz /tmp/redis.tar.gz     && rm -r /tmp/redis.tar.gz     && mkdir -p /usr/src/php/ext     && mv redis-4.3.0 /usr/src/php/ext/redis     && docker-php-ext-install redis
