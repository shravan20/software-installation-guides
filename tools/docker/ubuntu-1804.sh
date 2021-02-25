#!bin/sh
echo "-------------------------Uninstall old versions-------------------------"

echo "Older versions of Docker were called docker, docker.io, or docker-engine. If these are installed, uninstalling them."
sudo apt-get remove docker docker-engine docker.io containerd runc


echo "Update the apt package index and install packages to allow apt to use a repository over HTTPS"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "-------------------------Now adding the Docker’s official GPG key-------------------------"
sudo apt install curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


echo "Set up the stable repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


echo "--------------------------------Installing Docker Engine--------------------------------"
echo "Install the latest version of Docker Engine"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "--------------------------------Installing Docker Engine--------------------------------"
sudo apt-get install docker-ce=5:18.09.1~3-0~ubuntu-xenial docker-ce-cli=5:18.09.1~3-0~ubuntu-xenial containerd.io


echo "----Verify that Docker Engine is installed correctly by running the hello-world image----"
sudo docker run hello-world
