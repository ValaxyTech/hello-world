FROM centos:7
MAINTAINER srikanth@GMAIL.COM
RUN yum update -y && yum install httpd -y
COPY srikanth.html /war/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
