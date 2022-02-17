#!/bin/bash

# apt update and install for pre-requisite
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

# update apt repository for docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# apt update and install
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

