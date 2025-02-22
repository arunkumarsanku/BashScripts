#!/bin/bash


# Installing dependies 
echo "############################"
echo "Installing packages."
echo "############################"
sudo yum install wget unzip httpd -y > /dev/null
echo

# start and enable services
echo "############################"
echo "Start and Enable HTTPD Services"
echo "############################"
sudo systemctl restart httpd
sudo systemctl enable httpd
echo

# Creating Temp Directory
echo "############################"
echo "Starting Artifact Deployment"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2108_dashboard.zip > /dev/null
unzip 2108_dashboard.zip > /dev/null
sudo cp -r 2108_dashboard/* /var/www/html
echo

# Bounce Service
echo "############################"
echo "Restarting HTTPD Service"
echo "############################"
systemctl restart httpd
echo

# Clean UP
echo "############################"
echo "Removing Temporary Files"
echo "############################"
rm -rf /tmp/webfiles
echo


sudo systemctl status httpd

ls /var/www/html

