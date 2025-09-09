#!/bin/bash
set -e
echo "Validating app health..."
sleep 5
curl -f http://localhost:3000/ || exit 1
echo "App is healthy"
