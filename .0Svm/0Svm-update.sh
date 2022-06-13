#!/bin/bash
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "Not running as root. Use sudo."
    exit
fi
apt update -y;
apt upgrade -y;
gitup /opt;
echo "Update complete"
