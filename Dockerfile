FROM public.ecr.aws/docker/library/php:8.0-fpm-alpine3.15 as web_app

# RUN docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/

COPY . .


FROM public.ecr.aws/nginx/nginx:1.25-alpine as web_proxy

WORKDIR /var/www/

COPY ./docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=web_app /var/www/public /var/www/public