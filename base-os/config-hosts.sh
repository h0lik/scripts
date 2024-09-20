#!/bin/bash 
inet="enp1s0"
ip=$(ip --brief address show $inet | awk '{print $3}' | cut -d'/' -f1)
host="$HOSTNAME"
echo "$ip $host" >> /etc/hosts && cat /etc/hosts | grep -e "$ip" -e "$host"]
