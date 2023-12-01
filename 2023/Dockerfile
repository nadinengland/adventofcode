FROM php:8.3.0-cli-bullseye
COPY --from=composer:2.6.5 /usr/bin/composer /usr/local/bin/composer
RUN apt-get update && apt-get install -y zip libzip-dev
RUN docker-php-ext-install zip
RUN apt-get remove -y libzip-dev && rm -rf /var/lib/apt/lists/*

