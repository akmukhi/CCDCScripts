#!/bin/bash

sudo apt-get install clamav clamav-daemon
echo "running clamscan"

clamscan --recursive=yes --infected/home