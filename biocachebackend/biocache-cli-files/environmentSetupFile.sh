#!/bin/sh
if [ ! "$BIOCACHE_MEMORY_OPTS" ]
then
  BIOCACHE_MEMORY_OPTS="-Xmx16g -Xms1g"
fi
