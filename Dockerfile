# Pull base image 
From tomcat:8-jre8 

mohan created a new file 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
