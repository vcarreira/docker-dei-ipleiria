FROM vcarreira/nginx-php7-fpm

MAINTAINER "Vitor Carreira" <vitor.carreira@gmail.com>

COPY conf/default.dev /etc/nginx/sites-available/default

RUN sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.1/fpm/php.ini

CMD ["/usr/bin/supervisord"]
