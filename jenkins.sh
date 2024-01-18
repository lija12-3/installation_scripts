#!/bin/bash

 apt update -y

 apt install fontconfig openjdk-17-jre

java -version

 apt update -y


 wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

 apt update -y



 apt-get install jenkins -y

 service jenkins start

cat /var/lib/jenkins/secrets/initialAdminPassword

#sudo service jenkins status


#34.232.26.121

