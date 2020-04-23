FROM centos:6
MAINTAINER Hemanth

# Install Apache
RUN yum -y update
RUN yum -y install httpd httpd-tools

EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


#commands:
#sudo docker build -t image_apache .
#sudo docker run -tid -p 5000:80 --name=container_apache image_apache
