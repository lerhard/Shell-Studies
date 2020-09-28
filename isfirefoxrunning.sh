#!/bin/bash

COMMAND=$(ps ax | grep firefox | grep -v grep | grep -v *sh | awk '{$1=$1;print $1}')

if [[ -z "$COMMAND" ]] ;
then
	echo 'Firefox isnt running
	let me just run it for you!'
	firefox & 
	echo 'Done! Good Browsing!'
	exit 0
else
	read -p 'Firefox is running. Do you want kill it?(Type yes or no) [no] ' answer
	answer=${answer:-"no"}
	if [[ $answer == "yes" ]];
	then
		mplayer ohjeez.ogg &> /dev/null
		echo 'Oh Jeez! OK! Killing it'
		kill -15 $COMMAND
		exit 0
	else
		echo 'Okay. Good Browsing! :)'
		exit 0
	fi
fi
