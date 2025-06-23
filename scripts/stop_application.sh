#!/bin/bash
echo "Stopping Node.js application..."

APP_NAME="index.js"  # or app.js — replace with your entry point
PID=$(pgrep -f "$APP_NAME")

if [ -n "$PID" ]; then
  echo "Found process $PID. Killing it..."
  kill -9 $PID
  echo "Application stopped."
else
  echo "No running process found."
fi
