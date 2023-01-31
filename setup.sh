#!/bin/bash

#Install docker.
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#The Docker daemon runs as root. Adding yourself to the docker group will let you use Docker without sudo.
sudo usermod -aG docker $USER

#Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Install git
sudo apt install git

#Check versions
docker --version
docker-compose --version
git --version

#Configure git
git config --global user.name "username"
git config --global user.email user@gmail.com

#Verify configuration changes
git config --list


#Start docker service.
sudo systemctl status docker.service
sudo systemctl status containerd.service &

#Check docker process
docker ps
docker images
