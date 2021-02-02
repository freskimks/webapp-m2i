FROM ubuntu
MAINTAINER Freskim (freskimhajdini69@gmail.com)


RUN apt-get update
RUN apt-get install -y nginx

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
