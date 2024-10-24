FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd
WORKDIR /var/www/html/
RUN touch index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22