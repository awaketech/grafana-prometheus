# monitoring-setup-commands
The repo consists setup on grafana server and grafana server to monitor application and database containers on grafana server.

#Install docker, docker-compose and git in grafana server using bash script. Also configure git.

$ bash setup.sh

#Create grafana-network for our services.

$ docker network create grafana-network

#Containerize prometheus, grafana, grafana_image_renderer and alertmanager in grafana server.

$ docker-compose up -d

#Check running docker containers.

$ docker ps

#Access prometheus dashboard.

  http://ip:9090 

#Access grafana dashboard.

  http://ip:3000

#Containerize cadvisor and node exporter services in grafana server.

$ docker-compose up -d

#We can create dashboards and alerts on grafana according to our requirements after this process.
