#!bin/bash

sudo yum update -y

#instalar git
sudo yum install git -y

sudo mkdir apps
cd apps
git clone https://github.com/julioCesarMR/java-server.git
cd java-server/database-mysql



