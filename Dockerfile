FROM centos:latest 
MAINTAINER contact@waresiak.it
RUN yum install -y httpd \
 zip\ 
 unzip
ADD https://www.free-css.com/assets/files/free-css-tempates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/bttpd", "-D", "FOREGROUD"]
EXPOSE 80 22