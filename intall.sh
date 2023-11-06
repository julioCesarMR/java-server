#!bin/bash

sudo yum update -y

#instalar git
sudo yum install git -y



#instalar nginx
sudo yum install -y nginx
#start nginx
sudo systemctl start nginx
sudo systemctl enable nginx

sudo mkdir /usr/share/nginx/html/page1
sudo mkdir /usr/share/nginx/html/page2
sudo mkdir /usr/share/nginx/html/page3

echo "<html><body><h1>Page 1 servidor A </h1></body></html>" | sudo tee /usr/share/nginx/html/page1/index.html
echo "<html><body><h1>Page 2 servidor A </h1></body></html>" | sudo tee /usr/share/nginx/html/page2/index.html
echo "<html><body><h1>Page 3 servidor A </h1></body></html>" | sudo tee /usr/share/nginx/html/page3/index.html

sudo nano /etc/nginx/nginx.conf





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
cd ../../../
cd java-server/aws-server-b
mvn clean install
cd target
java -jar aws-server-b-0.0.1-SNAPSHOT.jar &
cd ../..


#linux how kill apps port 8091
sudo kill -9 $(sudo lsof -t -i:8090)
#delete folder
