#!/bin/bash

filter01=$(netstat -i | grep eth0 | awk '{print $1}')

if [ -n "$filter01" ]; then

	while :
	do

	sleep 60

	date >> /tmp/logarp.txt
	arp -n -i eth0 >> /tmp/logarp.txt

	done

else
	echo "Интерфейс eth0 не найден" >> /tmp/logarp.txt
	echo "script check_arp done" >> /tmp/logarp.txt
	break
fi
