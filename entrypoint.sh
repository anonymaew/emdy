#!/bin/sh                                             

compile () {
	yarn build
	find /app/dist -name "*.md" -type f -delete
}

setup () {
	mkdir /app/dist
	yarn preview --host --port 80 &
}

setup
hash_command="ls -lR --full-time /app/src | sha256sum"
hash=""
while :; do                               
	current_hash=$(eval $hash_command)                                                   
	[ ! "$current_hash" = "$hash" ] && hash=$current_hash && compile
	sleep 1
done
