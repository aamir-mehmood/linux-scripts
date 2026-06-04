#!/bin/bash
set -e

echo "Installing AWS CLI v2..."

# Install unzip if missing
sudo apt update
sudo apt install -y unzip

# Download AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip installer
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Verify installation
aws --version

echo "AWS CLI installation complete."

