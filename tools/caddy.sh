#!/bin/bash

set -e

echo "Installing prerequisites..."
sudo apt update
sudo apt install -y debian-keyring debian-archive-keyring curl gnupg2

echo "Adding Caddy GPG key..."
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | \
  sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg

echo "Adding Caddy APT repository..."
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | \
  sed 's|signed-by=.*|signed-by=/usr/share/keyrings/caddy-stable-archive-keyring.gpg|' | \
  sudo tee /etc/apt/sources.list.d/caddy-stable.list

echo "Installing Caddy..."
sudo apt update
sudo apt install -y caddy

echo "Caddy installed successfully!"
echo "Enabling and starting Caddy..."
sudo systemctl enable caddy
sudo systemctl start caddy

echo "Caddy version:"
caddy version
