#!/bin/bash

ip = 172.20.241.20
port = 
user = 
passwd = 

cd /opt

echo "Downloading forwarder"

wget -O splunkforwarder-9.0.4-de405f4a7979-Linux-x86_64.tgz "https://download.splunk.com/products/universalforwarder/releases/9.0.4/linux/splunkforwarder-9.0.4-de405f4a7979-Linux-x86_64.tgz"
tar -xzvf /opt/splunk.tgz
cd /opt/splunkforwarder/bin
./splunk start --accept-license

echo "adding the forward server"
echo "please wait"

./splunk add forward-server $ip:$port -auth $user:$passwd

echo "adding monitor"
./splunk add monitor /var/log

echo "Restarting"
./splunk restart

echo "finished"