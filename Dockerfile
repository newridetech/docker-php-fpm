FROM circleci/php:7.1

RUN sudo apt-get install -y \
        libicu-dev \
        zlib1g-dev \
    && sudo docker-php-ext-install intl \
    && sudo docker-php-ext-install pdo_mysql \
    && sudo docker-php-ext-install zip
