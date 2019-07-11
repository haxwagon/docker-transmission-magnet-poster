#!/bin/sh

if [ $# -lt 1  ]; then
  echo "Usage: $0 <magnet file folder>"
  exit 1
fi

MAGNET_FOLDER=$1

echo "Watching for magnets in $MAGNET_FOLDER and sending to $TRANSMISSION_URL every $PERIOD seconds..."
while true; do
	for MAGNET_FILE in `find "$MAGNET_FOLDER" -iname "*.magnet"`; do
		echo "Found magnet file: $MAGNET_FILE"
		MAGNET_LINK=`cat $MAGNET_FILE`
		echo "Adding magnet link: $MAGNET_LINK from $MAGNET_FILE..."
		transmission-remote $TRANSMISSION_URL --add "$MAGNET_LINK" && rm "$MAGNET_FILE"
	done
	sleep $PERIOD
done



