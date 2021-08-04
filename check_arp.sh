#!/bin/sh

while :
do

sleep 60

date >> /tmp/logarp.txt
arp -n -i eth0 >> /tmp/logarp.txt

done
