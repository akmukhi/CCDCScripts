#!/bin/bash

echo "Installing nmap" 
echo "Please wait"

sudo yum install nmap
nmap -version

echo "Finished installing nmap"

echo "installing clamav"
echo "Please wait"

sudo yum install clamav clamav-update -y freshclam

echo "finished installing clamav" 

echo "installing lynis"
echo "Please wait"

sudo yum install lynis -y
echo "Lynis installed"

echo "disabling accounts with no passwords from login"
echo "Please wait"

sed -i 's/nullok//g' /etc/pad.d/system-auth
echo "finished"


