#! /bin/bash

x=$1
#prvo pronađene datoteke stavljamo u privremeni folder
mkdir ./.temp
find /home/niko -size +$x\c -type f -not -path "*/.*" #size je zadan u B
find /home/niko -size +$x\c -type f -not -path "*/.*" | xargs -I {} cp {} ./.temp/

#komprimiramo datoteke iz temp foldera i brišemo folder
cd .temp
ls | xargs tar -cf backup.tgz 
mv backup.tgz ../
cd ../
rm -r .temp




