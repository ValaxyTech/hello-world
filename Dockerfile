# Pull base image
From tomcat

COPY /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

#copy war file on to cointainer
COPY ./webapp.war /usr/local/tomcat/webapps
