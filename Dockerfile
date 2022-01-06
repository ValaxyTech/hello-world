FROM centos:latest
RUN   yum update -y
RUN yum install maven -y
RUN yum install git -y
RUN yum install java-11-openjdk.*86_64 -y
RUN yum install wget -y
RUN yum install sudo -y
RUN yum install epel-release -y
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
RUN yum clean all
CMD java -Djenkins.install.runSetupWizard=false -jar /usr/lib/jenkins/jenkins.war
