#!/bin/bash

ip = 
port = 
user = 
passwd = 

cd /opt

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