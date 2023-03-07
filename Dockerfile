# Imagem php 8.2 fpm
FROM php:8.1-fpm

# Dependências
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libonig-dev \
    zip \
    unzip \
    zlib1g-dev \
    libpng-dev

# Limpar cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Copiando composer para a imagem
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Extensões php
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd sockets

# Diretório de trabalho
WORKDIR /var/www
