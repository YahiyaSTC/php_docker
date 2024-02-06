FROM php:8.0-apache

WORKDIR /var/www/html

# RUN  apt-get update -y && apt-get install -y libmariadb-dev
# RUN  apt-get install ibicu-dev
# RUN  docker-php-ext-install pdo_mysql 

RUN apt-get update && apt-get install -y \
    libicu-dev \
    libonig-dev \
    zlib1g-dev \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/*


RUN docker-php-ext-install pdo_mysql intl zip
