FROM richarvey/nginx-php-fpm:3.1.6

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG true
ENV LOG_CHANNEL stderr

ENV APP_URL=https://laravel-dev-wsim.onrender.com/
ENV DB_CONNECTION=pgsql
ENV DB_HOST=aws-0-eu-central-1.pooler.supabase.com
ENV DB_PORT=6543
ENV DB_DATABASE=postgres

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]