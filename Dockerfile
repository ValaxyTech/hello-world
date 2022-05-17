# Pull base image 
From openjdk

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY target/*.war /
EXPOSE 9090
