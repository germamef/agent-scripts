#!/bin/bash
#Desc: Docker installation on a Centos 7 server (recommended method)
#Auth:
#Date:

#First boot up a Centos 7 server and connect remotely to it. 

#Step1: Clean up the system
#Make sure the system is clean by removing any old version of docker that might be installed: 

#it’s ok if yum reports that none of these packages are installed


sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

#Step 2: Setup the docker repository
#To do that, run the following commands:


sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Step 3: Install the docker engine
#Use the following command to install the latest version of Docker Engine on your system:


 sudo yum install docker-ce docker-ce-cli containerd.io

#Step 4: Check the status, start and enable docker daemon
#Check the status of the docker daemon with the command


 sudo systemctl status docker
#If the daemon is not up and running, start and enable it with  the commands


sudo systemctl start docker
sudo systemctl enable docker
#Check the status of the daemon to make sure it is up and running with


sudo systemctl status docker

#If the daemon is not up and running, start and enable it with  the commands


sudo systemctl start docker
sudo systemctl enable docker
#Check the status of the daemon to make sure it is up and running with


sudo systemctl status docker