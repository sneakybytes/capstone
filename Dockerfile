FROM httpd

COPY ./app/index.html /usr/local/apache2/htdocs/index.html

EXPOSE 80


