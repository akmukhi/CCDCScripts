#!/bin/bash


echo "removing crontab for current user"
crontab -r $whoami
service crond stop

echo "installing  whowatch"


sudo apt-get install whowatch

echo "Disabling accounts with no passwords from logging in"
sed -i 's/nullok//g' /etc/pam.d/system-auth

echo "turn http off"
service httpd stop
