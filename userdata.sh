#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo systemctl restart apache2
sudo chmod 777 -R /var/www/html/
cd /var/www/html/
sudo echo "<h1>Hello From Terraform</h1>" > index.html