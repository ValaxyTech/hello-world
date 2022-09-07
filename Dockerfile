# Update User: SPW
# Update Date: 9/5/2022


# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "SPW" 

# Copy war file from current working directory to tomcat container
COPY ./maven-project.war /usr/local/tomcat/webapps
