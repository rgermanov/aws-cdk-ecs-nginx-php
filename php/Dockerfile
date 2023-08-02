FROM public.ecr.aws/docker/library/php:8.0-fpm-alpine3.15 as web_app

RUN docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

COPY ./src .

# PHP-FPM Configuration
# COPY ./php-fpm.d/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf