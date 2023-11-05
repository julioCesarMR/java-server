#!bin/bash

sudo yum update -y

#instalar git
yum install git -y



#instalar nginx
yum install -y nginx

#instalar java 17 openjdk
yum install java-17-openjdk-devel -y


cd mkdir "apps"
git clone