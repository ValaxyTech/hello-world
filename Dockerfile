# Pull base image test
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "ParveenSindhwani89@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
