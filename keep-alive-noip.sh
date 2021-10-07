#!/bin/sh
if test -f "/usr/local/etc/no-ip2.conf"; then
	echo "[*]Container created, use noip2 -C to log in your account"
	noip2 > /dev/null 2>&1
else
	echo "[*]Starting the noip2 daemon"
	noip2
fi

while true
do
sleep 10
#do something
done
