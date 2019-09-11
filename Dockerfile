# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com"
RUN cp -r ./webapp.war /usr/local/tomcat/webapps
