if [ $1 ]
then
	docker-compose run -d --name BIOCACHE_INDEX_$1 biocachebackend biocache index -dr $1
	echo "docker logs --follow BIOCACHE_INDEX_"$1
	docker logs --follow BIOCACHE_INDEX_$1
else
	echo "Please enter a data resource argument like 'dr3'."
fi
