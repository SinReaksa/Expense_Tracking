FROM php:8.2-apache

# Install mysqli extension (needed for your project)
RUN docker-php-ext-install mysqli

# Enable Apache rewrite (optional but useful)
RUN a2enmod rewrite

# Copy project into container
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80