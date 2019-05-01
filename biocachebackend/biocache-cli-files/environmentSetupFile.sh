#!/bin/sh
if [ ! "$BIOCACHE_MEMORY_OPTS" ]
then
  BIOCACHE_MEMORY_OPTS="-Xmx8g -Xms1g"
fi
