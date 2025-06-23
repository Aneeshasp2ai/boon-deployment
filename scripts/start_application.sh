#!/bin/bash
echo "Starting Node.js application..."

cd /home/ubuntu/app  # Must match `appspec.yml` destination

# Install dependencies (optional, or use separate hook)
npm install

# Start the app in the background
nohup node index.js > app.log 2>&1 &
echo "Application started."
