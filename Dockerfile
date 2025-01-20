FROM php:8.1-fpm
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /var/www/html
COPY . .
RUN composer install --optimize-autoloader --no-dev
CMD ["php", "-S", "0.0.0.0:8080", "-t", "public"]
