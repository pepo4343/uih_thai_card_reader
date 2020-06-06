#!/bin/bash
SERVICE="python"
if pgrep "$SERVICE" >/dev/null
then
	echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
	nohup python3 /smartcard/main.py&
fi
