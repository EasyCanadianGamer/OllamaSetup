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

# Optional: pull more models
echo "Pulling qwen3-coder:latest model..."
ollama pull qwen3-coder:latest

echo "Pulling qwen2.5:14b-instruct model..."
ollama pull qwen2.5:14b-instruct

# Optional: pull more models
echo "Pulling HammerAI/mythomax-l2:latest model..."
ollama pull HammerAI/mythomax-l2:latest

# Optional: pull more models
echo "Pulling HammerAI/mn-mag-mell-r1:latest model..."
ollama pull HammerAI/mn-mag-mell-r1:latest


echo "All specified Ollama models have been pulled successfully!"
