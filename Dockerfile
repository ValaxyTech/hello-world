# Pull base image 
FROM tomcat:8-jre8

# Maintainer
MAINTAINER "saurabh221089@gmail.com"
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
