#!/bin/bash

# Navigate to app directory
cd /home/ubuntu/project

echo "Ensuring correct file ownership..."
sudo chown -R ubuntu:ubuntu /home/ubuntu/project


echo "Installing Node.js dependencies..."
yarn cache clean

yarn install

npx next build

pm2 start

