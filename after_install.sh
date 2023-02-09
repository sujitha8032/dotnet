#!/bin/bash

echo "Running AfterInstall script..."

# Copy the new application files
echo "Copying new application files..."
sudo cp -R /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/deployment-archive/myapp /var/www/myapp

# Remove the installation directory
echo "Removing installation directory..."
sudo rm -rf /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/deployment-archive/myapp
