# Use the official PHP image with Apache
FROM php:7.4-apache

# Install PDO, MySQL and mysqli extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy only the dets app folder into the container web root
COPY dets/ /var/www/html/

# Expose port 80 (default Apache port)
EXPOSE 80
