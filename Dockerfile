# Pull base image
From tomcat

#copy war file on to cointainer
COPY ./webapp.war /usr/local/tomcat/webapps
