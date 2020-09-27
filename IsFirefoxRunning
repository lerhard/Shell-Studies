#!/bin/bash

COMMAND=$(ps ax | grep firefox | awk '{ print $1}' | head -n -1)

if [[ -z "$COMMAND"  &&  "$COMMAND" != " " ]];
then
	echo 'Firefox isnt running
	let me just run it for you!'
	firefox & 
	echo 'Done! Good Browsing!'
	exit 0
else
	read -p 'Firefox is running. Do you want kill it?(Type yes or no) [no] ' answer
	answer=${answer:-"no"}
	echo $answer
	if [[ $answer == "yes" ]];
	then
		echo 'Jeez! OK! Killing it'
		kill -15 $COMMAND
		exit 0
	else
		echo 'Okay. Good Browsing! :)'
		exit 0
	fi
fi
