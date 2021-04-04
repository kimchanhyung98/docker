FROM php:7.4-fpm
WORKDIR /var/www/laravel

# Install packages
RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php  
RUN mv composer.phar /usr/bin/composer

COPY laravel/ /var/www/laravel/
RUN composer install

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
RUN npm install && npm run dev

EXPOSE 9000
CMD ["php-fpm"]
