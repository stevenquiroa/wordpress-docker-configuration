FROM wordpress:latest

RUN echo "\n log_errors = on\n error_log = /var/log/apache2/php_err.log" > /usr/local/etc/php/conf.d/php_error.ini && touch /var/log/apache2/php_err.log && chown www-data:www-data /var/log/apache2/php_err.log
