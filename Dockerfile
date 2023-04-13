FROM debian:latest
RUN apt-get update && apt-get -y install apache2
COPY index.html /var/www/html/index.html
COPY imagens /var/www/html/imagens
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80