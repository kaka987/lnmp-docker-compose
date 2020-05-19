######
# See: https://hub.docker.com/_/php/
######

FROM php:7.2.11-fpm
MAINTAINER Young <zhy_0875@gmail.com>

COPY composer /usr/bin/composer

RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

RUN mkdir -p /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

######
# You can install php extensions using docker-php-ext-install
######
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) mysqli \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install -j$(nproc) opcache \
    && docker-php-ext-install -j$(nproc) pdo_mysql
