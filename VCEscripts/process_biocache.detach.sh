if [ $1 ]
then
	docker-compose run -d --name BIOCACHE_PROCESS_$1 biocachebackend biocache process -dr $1
	echo "docker logs --follow BIOCACHE_PROCESS_"$1
	docker logs --follow BIOCACHE_PROCESS_$1
else
	echo "Please enter a data resource argument like 'dr3'."
fi
