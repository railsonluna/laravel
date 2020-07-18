#!/bin/bash

composer install --prefer-dist --no-interaction
php artisan key:generate
php artisan config:cache
php artisan config:clear
php artisan migrate
php-fpm
