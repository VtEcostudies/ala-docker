#!/bin/bash

#security.cas.bypass=false
f=$(grep -r -e "security.cas.bypass=false" | cut -d: -f1 | sort -d | uniq | grep -e "diableCAS.sh" -v | xargs)
for i in $f; do
        echo "sed -i 's,security.cas.bypass=false,security.cas.bypass=true,g' $i"
        sed -i 's,security.cas.bypass=false,security.cas.bypass=true,g' $i
done

#disableCAS=false
f=$(grep -r -e "disableCAS=false" | cut -d: -f1 | sort -d | uniq | grep -e "diableCAS.sh" -v | xargs)
for i in $f; do
        echo "sed -i 's,disableCAS=false,disableCAS=true,g' $i"
        sed -i 's,disableCAS=false,disableCAS=true,g' $i
done
