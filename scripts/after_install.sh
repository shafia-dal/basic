#!/bin/bash

# Navigate to app directory
cd /home/ubuntu/project

echo "Ensuring correct file ownership..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/project

echo "Installing Node.js tools (if not already)..."
command -v yarn >/dev/null 2>&1 || sudo npm install -g yarn
command -v pm2 >/dev/null 2>&1 || sudo npm install -g pm2

echo "Installing Node.js dependencies..."
yarn cache clean

yarn install

npx next build

pm2 start

