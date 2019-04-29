#!/bin/bash

f=$(grep -r -e "https://beta.bioatlas.se" * | cut -d: -f1 | sort -d | uniq | grep -e "baptize.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,https://beta.bioatlas.se,http://beta.vtatlasoflife.org,g' $i"
	sed -i 's,https://beta.bioatlas.se,http://beta.vtatlasoflife.org,g' $i
done

f=$(grep -r -e "beta.bioatlas.se" * | cut -d: -f1 | sort -d | uniq | grep -e "baptize.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,beta.bioatlas.se,beta.vtatlasoflife.org,g' $i"
	sed -i 's,beta.bioatlas.se,beta.vtatlasoflife.org,g' $i
done

#MATCH WHOLE WORD to avoid a mess
f=$(grep -rw -e "bioatlas.se" * | cut -d: -f1 | sort -d | uniq | grep -e "baptize.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,bioatlas.se,beta.vtatlasoflife.org,g' $i"
	sed -i 's,bioatlas.se,beta.vtatlasoflife.org,g' $i
done
