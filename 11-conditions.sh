#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root or use sudo"
    exit 1
fi

# Update package lists
echo "Updating package lists..."
apt update

# Install Nginx
echo "Installing Nginx..."
apt install -y nginx

# Start Nginx service
echo "Starting Nginx service..."
systemctl start nginx

# Enable Nginx to start on boot
echo "Enabling Nginx to start on boot..."
systemctl enable nginx

# Check Nginx status
echo "checking Nginx status"
systemctl status nginx

