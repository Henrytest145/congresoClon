# Usa una imagen base oficial de PHP con Apache
FROM php:8.2-apache

# Copia todos los archivos del proyecto al contenedor
COPY . /var/www/html/

# Expone el puerto 80
EXPOSE 80
