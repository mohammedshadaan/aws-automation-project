#!/bin/bash
set -e
echo "Stopping existing app if running..."
if systemctl is-active --quiet myapp.service; then
  systemctl stop myapp.service || true
fi
echo "Cleaning old files..."
rm -rf /var/www/myapp/*
