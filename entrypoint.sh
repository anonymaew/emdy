#!/bin/sh                                             

compile () {
	rm -rf /app/dist
	yarn build
}

hash_command="ls -lR --full-time /app/src | sha256sum"
hash=""
while :; do                               
	current_hash=$(eval $hash_command)                                                   
	[ ! "$current_hash" = "$hash" ] && hash=$current_hash && compile
	sleep 1
done
