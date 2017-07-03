FROM alpine:edge

ENV COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_NO_INTERACTION=1

RUN apk --no-cache --no-progress add bash php7 php7-openssl php7-xmlwriter php7-tokenizer php7-session php7-pdo_mysql php7-pdo_sqlite php7-mbstring php7-json php7-xml php7-curl php7-zip php7-zlib php7-bcmath php7-mcrypt curl nodejs php7-phar php7-dom php7-ctype php7-xdebug; \
    ln -s /usr/bin/php7 /usr/bin/php; \
    curl -L https://getcomposer.org/installer -o /tmp/composer-setup; \
    php /tmp/composer-setup --install-dir=/usr/bin --filename=composer
