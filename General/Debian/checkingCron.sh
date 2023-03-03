#!/bin/bash

sudo find / -name *.log -exec cat -n {} \; | tee output1.txt
sudo find / -name *.log -exec cat -n {} \; | tee output2.txt
diff output1.txt output2.txt

