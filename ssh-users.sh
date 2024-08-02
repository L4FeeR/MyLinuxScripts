#!/usr/bin/bash
finger | grep 23bcs;echo -e "\n----------------------------------------------------------------\n";ps au | grep 23bcs | awk '{print $1 "\t"  $11 " " $12 " " }'

