#!/bin/bash

# Initially, altered all to the wrong domain 
#
#	'vtecostudies.org'
#
f=$(grep -r -e "https://beta.vtecostudies.org" * | cut -d: -f1 | sort -d | uniq | grep -e "ooops.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,https://beta.vtecostudies.org,http://beta.vtatlasoflife.org,g' $i"
	sed -i 's,https://beta.vtecostudies.org,http://beta.vtatlasoflife.org,g' $i
done

f=$(grep -rw -e "beta.vtecostudies.org" * | cut -d: -f1 | sort -d | uniq | grep -e "ooops.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,beta.vtecostudies.org,beta.vtatlasoflife.org,g' $i"
	sed -i 's,beta.vtecostudies.org,beta.vtatlasoflife.org,g' $i
done

f=$(grep -r -e "auth.beta.vtatlasoflife.org" * | cut -d: -f1 | sort -d | uniq | grep -e "ooops.sh" -v | xargs)

for i in $f; do
	echo "sed -i 's,auth.beta.vtatlasoflife.org,auth.bioatlas.se,g' $i"
	sed -i 's,auth.beta.vtatlasoflife.org,auth.bioatlas.se,g' $i
done
