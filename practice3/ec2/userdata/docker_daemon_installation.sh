#!/bin/bash

# Update the system
sudo yum update -y

# Install required packages
sudo yum install -y docker

# Start Docker service
sudo service docker start

# Add the current user to the docker group
sudo usermod -aG docker $(whoami)
