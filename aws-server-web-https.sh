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

#####CONFIG NGINX
#start nginx
sudo systemctl start nginx
sudo systemctl enable nginx

#crate folder pages
sudo mkdir /usr/share/nginx/html/page1
sudo mkdir /usr/share/nginx/html/page2
sudo mkdir /usr/share/nginx/html/page3

#create index
echo "<html><body><h1>Page 1 Servidor A - $(hostname -f) </h1></body></html>" | sudo tee /usr/share/nginx/html/page1/index.html
echo "<html><body><h1>Page 2 Servidor A - $(hostname -f) </h1></body></html>" | sudo tee /usr/share/nginx/html/page2/index.html
echo "<html><body><h1>Page 3 Servidor A - $(hostname -f) </h1></body></html>" | sudo tee /usr/share/nginx/html/page3/index.html



sudo nano /etc/nginx/nginx.conf

sudo mkdir apps
cd apps

git clone https://github.com/julioCesarMR/java-server.git
cd java-server/aws-server-a-https
cp nginx.conf /etc/nginx/nginx.conf
sudo systemctl restart nginx

mvn clean install
cd target
java -jar aws-server-a-0.0.1-SNAPSHOT.jar &
