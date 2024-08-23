# Usa una imagen base oficial de PHP con Apache
FROM php:8.2-apache

# Copia los archivos del proyecto al contenedor
COPY app/ /var/www/html/

# Ajusta permisos para Apache
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# Configura el directorio raíz de Apache
RUN sed -i 's|/var/www/html|/var/www/html/app|g' /etc/apache2/sites-available/000-default.conf

# Expone el puerto 80
EXPOSE 80
