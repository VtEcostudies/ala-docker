#!/bin/bash

f=$(grep -r -e "https://beta.vtatlasoflife.org" * | cut -d: -f1 | sort -d | uniq | grep -e "gohttp.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,https://beta.vtatlasoflife.org,http://beta.vtatlasoflife.org,g' $i"
	sed -i 's,https://beta.vtatlasoflife.org,http://beta.vtatlasoflife.org,g' $i
done
