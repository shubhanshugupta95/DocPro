# Dockerfile
FROM ubuntu:latest
MAINTAINER shubhanshugupta
RUN sudo apt-get install apache2\
zip\
unzip
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page269/burger-king.zip /var/www/html
WORKDIR /var/www/html
RUN unzip burger-king.zip
RUN cp -rvf food-website-template/* .
RUN rm -rf food-website-template burger-king.zip
CMD ["usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
