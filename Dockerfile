# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 

#copy war file on to cointainer
COPY ./webapp.war /usr/local/tomcat/webapps
