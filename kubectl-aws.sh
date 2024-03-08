#!/bin/bash

# Install AWS CLI version 2
echo "Installing AWS CLI version 2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip -y 
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip
echo "AWS CLI version 2 installed successfully."

# Install kubectl version 1.29
echo "Installing kubectl version 1.29..."
sudo curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.29.0/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
echo "kubectl version 1.29 installed successfully."

# Verify installations
echo "Verifying installations..."
echo "AWS CLI version:"
aws --version
echo "kubectl version:"
kubectl version --client

echo "Installation complete."
