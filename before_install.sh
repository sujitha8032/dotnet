#!/bin/bash

echo "Running BeforeInstall script..."

# Stop the IIS service
echo "Stopping IIS service..."
sudo service iis stop

# Backup existing application files
echo "Backing up existing application files..."
sudo cp -R /var/www/myapp /var/backup/myapp
