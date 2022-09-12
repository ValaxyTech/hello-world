# Update User: SPW
# Update Date: 9/5/2022


# Pull base image 
From tomcat:8-jre8 

# Maintainer
MAINTAINER "SPW"

# Copy war file from jenkins workspace to tomcat server
COPY ./valaxy.war /usr/local/tomcat/webapps
 

