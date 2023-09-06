#!/bin/bash
## Variable Declaration
installpath=/opt/tomcat
confpath=./conf

## Commands start
apt install squid
cp /etc/squid/squid.conf /etc/squid/squid.conf.original
cp "${confpath}/squid.conf" /etc/squid/squid.conf