#!/bin/bash

d=./config
l=$1 #find this string
r=$2 #replace with this string
this=argsconvert.sh

f=$(grep -r $d -e $1 | cut -d: -f1 | sort -d | uniq | grep -e $this -v | xargs)

for i in $f; do
        echo "sed -i 's,$1,$2,g' $i"
        sed -i 's,'$1','$2',g' $i
done
