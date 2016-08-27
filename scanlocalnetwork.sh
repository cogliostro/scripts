#!/bin/sh
for i in $( arp-scan 192.168.10.0/24 | grep Unknown | awk '{print $1;}' ); do
	nmap -O $i
done
