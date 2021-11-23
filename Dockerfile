FROM centos:latest
MAINTAINER vbharti@dizvik.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/cosmix.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cosmix.zip
RUN cp -rvf cosmix/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
