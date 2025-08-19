#!/bin/bash
# setup_models.sh
# Pulls Ollama models for local use

# Exit immediately if a command fails
set -e

# Pull LLaMA 3.2 latest model
echo "Pulling llama3.2:latest model..."
ollama pull llama3.2:latest

# Optional: pull more models
echo "Pulling llama3.1:latest model..."
ollama pull llama3.1:latest

echo "All specified Ollama models have been pulled successfully!"
