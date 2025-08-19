#!/bin/bash
# ollama_override.sh
# Adds OLLAMA_HOST override to Ollama systemd service

set -e

echo "Creating systemd override for Ollama..."

# Create the override directory if it doesn't exist
sudo mkdir -p /etc/systemd/system/ollama.service.d/

# Write the override file
sudo tee /etc/systemd/system/ollama.service.d/override.conf > /dev/null <<EOL
[Service]
Environment="OLLAMA_HOST=0.0.0.0:11434"
EOL

# Reload systemd to apply changes
sudo systemctl daemon-reload

# Restart Ollama service
sudo systemctl restart ollama

# Show status
sudo systemctl status ollama --no-pager

echo "Ollama systemd override applied successfully!"
