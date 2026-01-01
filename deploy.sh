#!/bin/bash

# Update and install Apache if not present
sudo apt-get update -y
sudo apt-get install -y apache2

# Copy the file to the web root
sudo cp index.html /var/www/html/index.html

# Ensure permissions are correct
sudo chmod 644 /var/www/html/index.html

# Restart Apache to reflect changes
sudo systemctl restart apache2

echo "Deployment finished successfully!"