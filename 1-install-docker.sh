#!/bin/bash

swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
echo 'install docker SUCCESS !!!'

sudo usermod -aG docker ${USER}
echo 'Executing the Docker Command Without Sudo SUCCESS !!!'

