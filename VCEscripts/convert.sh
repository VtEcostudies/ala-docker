#!/bin/bash

#Bioatlas Sweden
#BioAtlas Sweden
#Biodiversity Atlas Sweden
#Bioatlas
f=$(grep -r -e "Bioatlas Sweden" -e "BioAtlas Sweden" -e "Biodiversity Atlas Sweden" -e "Bioatlas" | cut -d: -f1 | sort -d | uniq | grep -e "convert.sh" -v | xargs)

for i in $f; do
        echo "sed -i 's,Bioatlas Sweden, etc...,Vermont Atlas of Life,g' $i"
        sed -i 's,Bioatlas Sweden,Vermont Atlas of Life,g' $i
        sed -i 's,BioAtlas Sweden,Vermont Atlas of Life,g' $i
        sed -i 's,Biodiversity Atlas Sweden,Vermont Atlas of Life,g' $i
        sed -i 's,Bioatlas,Vermont Atlas of Life,g' $i
done

#VT Geo Centroid: 44.0687°N 72.6658°W

#f=$(grep -r -e "Latitude" -e "MapLat" | cut -d: -f1 | sort -d | uniq | grep -e "convert.sh" -v | xargs)
f=$(grep -r -e "62.2315" | cut -d: -f1 | sort -d | uniq | grep -e "convert.sh" -v | xargs)

for i in $f; do
        echo "sed -i 's,62.2315,44.0687,g' $i"
        sed -i 's,62.2315,44.0687,g' $i
done


#f=$(grep -r -e "Longitude" -e "MapLon" | cut -d: -f1 | sort -d | uniq | grep -e "convert.sh" -v | xargs)
f=$(grep -r -e "16.1932" | cut -d: -f1 | sort -d | uniq | grep -e "convert.sh" -v | xargs)

for i in $f; do
        echo "sed -i 's,16.1932,-72.6658,g' $i"
        sed -i 's,-16.1932,-72.6658,g' $i
        sed -i 's,16.1932,-72.6658,g' $i
done
