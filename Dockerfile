# Pull base image 
From openjdk

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY /webapp/target/webapp.war .
EXPOSE 9090
ENTRYPOINT ["java",".war","/webapp-1.0-SNAPSHOT.war"]
