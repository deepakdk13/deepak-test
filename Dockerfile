FROM centos:latest
MAINTAINER deepaksharm15@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/fluffster.zip /var/www/html
WORKDIR /var/www/html
RUN unzip fluffster.zip
RUN cp -rvf fluffster/* .
RUN rm -rf fluffster fluffster.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
