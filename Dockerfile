# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY webapp/target/valaxy.war /usr/local/tomcat/webapps
