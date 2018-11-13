#!/bin/bash
set -e

# Install Prereq for docker
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify Fingerprint
apt-key fingerprint 0EBFCD88

# Add repo
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker-CD
apt-get update
apt-get install docker-ce=18.06.0~ce~3-0~ubuntu
##apt-get install docker-ce
