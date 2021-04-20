#! /bin/bash

if [ "$1" = "on" ]; then
	nmcli device wifi hotspot
elif [ "$1" = "off" ]; then
	nmcli connection down Hostpot
else
	echo "error : invaild arg"
	echo "  you can use 'hostpod on' or 'hostpod off' only."
fi
