#!/bin/bash
## Variable Declaration
#installpath=/opt/tomcat
confpath=./conf

## Commands start
apt install bind9
cp /etc/bind9/named.conf.options /etc/bind9/named.conf.options.original
cp "${confpath}/named.conf.options" /etc/bind9/named.conf.options
