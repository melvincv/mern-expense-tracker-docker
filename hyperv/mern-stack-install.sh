#!/bin/bash -x

# Update the package list and upgrade all installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install git
sudo apt-get install -y git

# Installing Node.js with Apt Using a NodeSource PPA
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install MongoDB from official repos
sudo apt-get install gnupg -y
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl enable --now mongod

# Check mongodb version
mongod --version
node -v
npm -v
