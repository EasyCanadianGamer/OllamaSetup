#!/bin/bash
# setup_ollama.sh
# A simple setup script for Ollama on a KVM VM

set -e

# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y curl git python3 python3-pip unzip

# Install Ollama
if ! command -v ollama &> /dev/null
then
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "Ollama is already installed"
fi

# Create workspace folder
WORKSPACE="/workspace"
mkdir -p "$WORKSPACE"
echo "Workspace folder: $WORKSPACE"

# Optional: clone GitHub repo for models/scripts
# Replace <your-repo-url> with your GitHub repository URL
# git clone <your-repo-url> "$WORKSPACE"

# Show status
echo "Ollama setup complete!"
echo "You can now run: ollama serve"
