#!/bin/bash

echo "Stopping previous processes if any..."

# Kill any app using port 8888 (or update the port if different)
sudo kill -9 $(lsof -t -i:8888) || true

# Kill all pm2 and tmux sessions
pm2 kill || true
tmux kill-server || true

# Clean previous app directory
rm -rf /home/ubuntu/project/*