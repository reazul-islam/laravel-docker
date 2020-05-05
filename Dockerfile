FROM php:7.2.18-fpm-stretch
RUN apt-get update -y && apt-get install -y openssl zip unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo mbstring pdo_mysql mysqli
WORKDIR /app
COPY . /app
RUN composer config repositories.packagist.org composer https://repo-eu-uk-1.packagist.org
RUN composer install
EXPOSE 80
