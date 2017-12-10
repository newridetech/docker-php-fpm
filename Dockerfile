FROM circleci/php:7.1

RUN apt-get install -y zlib1g-dev
RUN sudo apt-get install libicu-dev \
    && sudo docker-php-ext-install intl \
    && sudo docker-php-ext-install pdo_mysql \
    && sudo docker-php-ext-install zip
