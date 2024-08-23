# Usa una imagen base oficial de PHP con Apache
FROM php:8.2-apache

# Copia los archivos del proyecto al contenedor
COPY public/ /var/www/html/

# Expone el puerto 80
EXPOSE 80
