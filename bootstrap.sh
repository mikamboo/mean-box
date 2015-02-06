#!/usr/bin/env bash


############## MEAN STACK INSTALLATION ################

# Install git 
sudo apt-get update --yes
sudo apt-get -y install git

# Install nodejs (include npm)
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update --yes

#-- Install nodejs & npm
sudo apt-get install -y nodejs

#Install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update --yes
sudo apt-get install -y mongodb-org

# Install Node.js tools
sudo npm install -g bower grunt-cli yo generator-meanjs

echo -e  "\n--- INSTALLATION FINISHED ---\n"

# TESTS installed packages
git --version && node -v && npm -v && mongo -version

