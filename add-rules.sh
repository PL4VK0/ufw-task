#!/bin/bash
#0
ufw default reject

#1
ufw allow in from 172.168.0.100 port 3000 to 172.168.0.100 port 3306

#2
ufw allow in from 192.168.32.55 to 172.168.0.100 port 3005

#3
ufw allow in on eth0 to 172.168.0.100 port 8099 from 0.0.0.0

#4
ufw limit in proto tcp from 0.0.0.0 to 172.168.0.100 port 6050:6055

ufw status >$1
