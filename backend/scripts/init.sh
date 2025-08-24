#!/bin/bash
echo "Initializing AetherLatticia environment..."
# Start IPFS daemon (assuming Kubo is installed)
ipfs daemon &
# Activate FastAPI
uvicorn backend.main:app --host 0.0.0.0 --port 8000 &
echo "Environment ready!"
chmod +x init.sh
