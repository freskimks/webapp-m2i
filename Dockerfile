FROM ubuntu
MAINTAINER Freskim (freskimhajdini69@gmail.com)


RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

RUN rm -f /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html


#ADD static-website-example /var/www/html/


EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
