#!/bin/bash

# Exit on error
set -e

echo "===== Updating System ====="
sudo dnf update -y

echo "===== Installing Java 11 ====="
sudo dnf install java-17-openjdk-devel -y

echo "===== Verifying Java Version ====="
java -version

echo "===== Adding Jenkins Repository ====="
sudo curl -fsSL -o /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

echo "===== Installing Jenkins ====="
sudo dnf install jenkins -y

echo "===== Starting Jenkins Service ====="
sudo systemctl start jenkins

echo "===== Enabling Jenkins on Boot ====="
sudo systemctl enable jenkins

echo "===== Jenkins Service Status ====="
sudo systemctl status jenkins

echo "===== Initial Jenkins Admin Password ====="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "===== Jenkins Installation Completed Successfully ====="
echo "Open your browser and navigate to: http://<SERVER-IP>:8080"
