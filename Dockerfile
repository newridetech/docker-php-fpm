FROM circleci/php:7.1

# libicu-dev for intl extension
# zlib1g-dev for zip extension
RUN sudo apt-get install -y \
        libicu-dev \
        zlib1g-dev \
    && sudo docker-php-ext-install gd \
    && sudo docker-php-ext-install intl \
    && sudo docker-php-ext-install pdo_mysql \
    && sudo docker-php-ext-install zip
