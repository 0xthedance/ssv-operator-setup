#! /bin/bash

# Set the network configuration

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp comment 'Allow SSH port'

sudo ufw allow 30303 comment 'Allow execution client port'

sudo ufw allow 9000 comment 'Allow consensus client port'

sudo ufw enable
sudo ufw status numbered 


# Create data directories for execution and consensus clients
mkdir -p ${DATA\PATH}/besu
mkdir -p ${DATA\PATH}/teku
mkdir -p ${DATA\PATH}/ssv


# Creating the jwtsecret file

sudo mkdir -p /secrets

openssl rand -hex 32 | tr -d "\n" | sudo tee /secrets/jwtsecret

sudo chmod 644 /secrets/jwtsecret