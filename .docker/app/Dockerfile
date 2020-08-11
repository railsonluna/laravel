FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    vim \
    git \
    iputils-ping \
    openssl \
    wget


ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz


#COPY wait-for-it.sh /local/bin/

WORKDIR /var/www


RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#
RUN usermod -u 1000 www-data
USER www-data

EXPOSE 9000

#ENTRYPOINT ["php-fpm"]
