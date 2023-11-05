#!bin/bash

sudo yum update -y

#instalar git
sudo yum install git -y



#instalar nginx
sudo yum install -y nginx

#instalar java 17 openjdk
sudo dnf install java-17-amazon-corretto-devel -y

#instalar maven
sudo dnf install maven -y

sudo mkdir apps
cd apps

git clone https://github.com/julioCesarMR/java-server.git
cd java-server/aws-server-a
mvn clean install
cd target
java -jar aws-server-a-0.0.1-SNAPSHOT.jar &
cd ../..
cd java-server/aws-server-b
mvn clean install
cd target
java -jar aws-server-b-0.0.1-SNAPSHOT.jar &
cd ../..


