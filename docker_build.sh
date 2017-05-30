#!/bin/bash 
# MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>
# cat Dockerfile | sed "s/{{app_version}}/$1/" | 
docker build -t shopizer:latest .
sleep 20
docker tag shopizer:latest 10.150.19.24:5000/shopizer:latest
docker push 10.150.19.24:5000/shopizer:latest

# docker run -it --privileged -v /home/jenkins/ssh_alpine:/tmp -v /var/run/docker.sock:/var/run/docker.sock test:1.0 /bin/bash
