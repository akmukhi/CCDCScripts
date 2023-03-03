#!/bin/bash


echo "installing linpeas"

curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh | sh
./linpeas.sh -a > /tmp/linpeas.txt

echo "instalation complete"