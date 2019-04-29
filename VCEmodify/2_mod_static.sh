#!/bin/bash

f=$(grep -r ~/repos/ala-docker/static/bs2 ~/repos/ala-docker/static/bs3 -e "bas-logo-2016-inline.png" | cut -d: -f1 | sort -d | uniq | grep -e "2_mod_static.sh" -v | xargs)

for i in $f; do
        echo "sed -i 's,bas-logo-2016-inline.png,val_logo_medium.png,g'" $i
        sed -i 's,bas-logo-2016-inline.png,val_logo_medium.png,g' $i
done
