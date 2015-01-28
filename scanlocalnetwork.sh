#!/bin/sh
for i in $( arp-scan 158.38.208.0/24 | grep Unknown | awk '{print $1;}' ); do
	nmap -O $i
done
