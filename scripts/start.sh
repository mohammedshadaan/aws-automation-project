#!/bin/bash
set -e
echo "Creating systemd service for myapp..."

cat <<EOF > /etc/systemd/system/myapp.service
[Unit]
Description=My Node.js App
After=network.target

[Service]
User=ec2-user
WorkingDirectory=/var/www/myapp
ExecStart=/usr/bin/node /var/www/myapp/dist/index.js
Restart=always
Environment=NODE_ENV=production
Environment=PORT=3000

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable myapp.service
systemctl start myapp.service
