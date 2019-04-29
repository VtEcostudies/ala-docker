#!/bin/bash

#security.cas.bypass=true
f=$(grep -r -e "security.cas.bypass=true" | cut -d: -f1 | sort -d | uniq | grep -e "diableCAS.sh" -v | xargs)
for i in $f; do
        echo "sed -i 's,security.cas.bypass=true,security.cas.bypass=true,g' $i"
        sed -i 's,security.cas.bypass=true,security.cas.bypass=true,g' $i
done

#disableCAS=true
f=$(grep -r -e "disableCAS=true" | cut -d: -f1 | sort -d | uniq | grep -e "diableCAS.sh" -v | xargs)
for i in $f; do
        echo "sed -i 's,disableCAS=true,disableCAS=true,g' $i"
        sed -i 's,disableCAS=true,disableCAS=true,g' $i
done
