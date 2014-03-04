#!/bin/sh

if [ -z "$PJSRVHOST" ] 
then
   /usr/sbin/dnsmasq -u root --conf-file=/etc/dnsmasq.conf
else 
   /usr/sbin/dnsmasq -u root --conf-file=/etc/dnsmasq.conf --srv-host=$PJSRVHOST
fi

cd /src/punjab-master
twistd -n -y ./punjab.tac
