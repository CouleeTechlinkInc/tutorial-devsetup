#!/bin/bash

# Exit on error
set -e

echo "Starting Docker and Docker Compose setup..."

# Update package index
sudo apt-get update

# Install required packages for Docker repository
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update apt package index
sudo apt-get update

# Install Docker Engine, containerd, and Docker Compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version
sudo docker compose version

# Add current user to docker group to avoid using sudo for docker commands
echo "Adding user $(whoami) to docker group..."
sudo usermod -aG docker $(whoami)
echo "You will need to log out and back in for this to take effect."

# Create /opt/stacks directory and set ownership
echo "Creating /opt/stacks directory..."
sudo mkdir -p /opt/stacks
sudo chown $(whoami):$(whoami) /opt/stacks

echo "Setup completed successfully!"
echo "Please log out and log back in to use Docker without sudo." 