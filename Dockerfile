FROM centos
RUN yum install -y httpd
WORKDIR /var/www/html/
RUN cat index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80