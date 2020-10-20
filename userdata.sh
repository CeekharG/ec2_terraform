# userdata that lets install httpd and enable webserver during installation of ec2

#!/bin/bash
sudo yum -y update 
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "Welcome to DevOps" > /var/www/html/index.html