#FROM php:fpm-alpine
#支持的插件列表：ls /usr/src/php/ext/
#RUN docker-php-ext-install bcmath gd gettext mysqli opcache pcntl pdo pdo_mysql sysvmsg
#RUN echo "opcache.file_cache=/tmp" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini

FROM tansoft/openresty-php:latest

#electron
RUN apk add npm; \
        npm install -g \
        babel-cli cordova \
        eslint express http-proxy \
        less moment mysql nodemon \
        react redis request sass vue webpack

CMD ["sh","/usr/local/start.sh"]
