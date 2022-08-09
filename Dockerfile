# Pull base image 
From tomcat:Latest

# Maintainer 
MAINTAINER "bharathkothamasu451@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
