FROM php:8.2-fpm

 RUN apt-get update && apt-get install -y \
    build-essential \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl
# Install extensions
# RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN apt-get update
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN mkdir -p /code/be_qr_code

EXPOSE 8000
# CMD php artisan serve --host=0.0.0.0


# 
# FROM php:8.2-fpm-alpine
# RUN apk add --no-cache nginx wget
# RUN mkdir -p /run/nginx
# COPY nginx/nginx.conf /etc/nginx/nginx.conf
# RUN mkdir -p /app
# COPY . /app
# RUN sh -c "wget http://getcomposer.org/composer.phar && chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer"
# RUN cd /app && \
#     /usr/local/bin/composer install --no-dev

# RUN chown -R www-data: /app

# CMD sh /app/nginx/startup.sh
