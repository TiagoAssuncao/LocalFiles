#!/bin/bash

/sbin/route del default
/sbin/route del default
/sbin/route add default gw 192.168.25.1 netmask 0.0.0.0
/sbin/route add -net 10.0.0.0 netmask 255.0.0.0 gw 10.196.7.1
/bin/echo "nameserver 8.8.8.8" > /etc/resolv.conf
/bin/echo "nameserver 8.8.4.4" >> /etc/resolv.conf

route -n
