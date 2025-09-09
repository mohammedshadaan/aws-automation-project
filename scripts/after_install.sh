#!/bin/bash
set -e
echo "Creating target directory..."
mkdir -p /var/www/myapp
chown -R ec2-user:ec2-user /var/www/myapp
