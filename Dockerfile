FROM circleci/php:7.1

RUN sudo apt-get install libicu-dev \
    && sudo docker-php-ext-install intl
