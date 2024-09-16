#!/bin/bash
cd src
rm -rf maliciousFiles
mkdir  secretDir
cd secretDir
touch .secret
chmod 600 .secret
SECRET=$(head -n 1 .secret)
cd ..
echo "$SECRET" | cut -c -32 > SOLUTION 
chmod +x mySolution.sh
./mySolution.sh
