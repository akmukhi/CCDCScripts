#!/bin/bash

sudo apt-get install lynis
./lynis show
./lynis show commands
./lynis audit system
./lynis audit system --quick