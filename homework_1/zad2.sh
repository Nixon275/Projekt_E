#! /bin/bash

find /home/niko -mmin -30 -type f -not -path "*/.*"
find /home/niko -mmin -30 -type f -not -path "*/.*" | xargs tar -cf backup.tgz  

