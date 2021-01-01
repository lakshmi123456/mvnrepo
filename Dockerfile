FROM centos
MAINTAINER SAI
RUN yum install -y httpd 
EXPOSE 80
RUN echo "Helloworld" > /var/ww/html/index.html 
