# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "shivaraj.n@isinfotech.in" 
COPY ./webapp.war /usr/local/tomcat/webapps

#Dummy line 1 from master

