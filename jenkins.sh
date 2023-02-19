#!/bin/bash
#Desc: Jenkins Installation on Centos
#Auth:
#Date:

#Introduction
#Jenkins is an open-source, Java-based automation server that offers an easy way to set up a continuous integration and 
continuous delivery (CI/CD) pipeline.

#Continuous integration (CI) is a DevOps practice in which team members regularly commit their code changes to the version control repository, after which automated builds and tests are run.

#Continuous delivery (CD) is a series of practices where code changes are automatically built, tested and deployed to production.

#I- Install Jenkins on centos 7 server
#Let’s go through the steps of installing Jenkins on a CentOS 7 system using the official Jenkins repository.

#Step 1: Install Java
#Since Jenkins is a Java application, we first need to install Java on our system. To do that, run the command: (make sure it is complete!):


sudo yum install java-11-openjdk-devel -y

#Step 2: Enable the Jenkins repository
#Here we are going to add the Jenkins repositories so that we can use yum to install the latest version of Jenkins. To do this run the commands below.


curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo  

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
#Step 3: Install the latest stable version of Jenkins
#We will do that using the command


sudo yum install jenkins -y

#After the installation process is completed, we need to start the service :

sudo systemctl start jenkins
#Check the status with:


sudo systemctl status jenkins



#Also enable the Jenkins service to start on system boot:


sudo systemctl enable jenkins


#Step 4: Adjust the firewall

sudo systemctl start firewalld

sudo systemctl enable firewalld

sudo systemctl status firewalld

#At this level, we need to open the necessary port for Jenkins:


sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload