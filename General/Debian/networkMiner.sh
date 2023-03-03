#!/bin/bash

sudo apt install mono-devel
mono --version

echo "installing network miner"
wget https://www.netresec.com/?download=NetworkMiner -00 /tmp/nm.zip
sudo unzip /tmp/nm.zip -d /opt/
cd opt/NetworkMiner*
sudo chmod +x NetworkMiner.exe
sudo chmod -R go+w AssembledFiles/
sudo chmod -R go+w Captures/
mono NetworkMiner.exe --noupdatecheck

echo "install complete"