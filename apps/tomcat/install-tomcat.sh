#!/bin/bash
## Variable Declaration
installpath=/opt/tomcat
confpath=./conf

## Commands start
useradd -m -d $installpath -U -s /bin/false tomcat && \

apt update 
apt install default-jdk -y

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
tar xzvf apache-tomcat-9*tar.gz -C $installpath --strip-components=1

chown -R tomcat:tomcat $installpath/
chmod -R u+x "${installpath}/bin"

cp "${confpath}/tomcat-users.xml" "${installpath}/conf"
cp "${confpath}/tomcat.service" /etc/systemd/system/tomcat.service
systemctl daemon-reload
systemctl start tomcat

rm -rfv *tar.gz*