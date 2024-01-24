#!/bin/sh
# Finder script for assignment 1
# Author: Mingtao Weng

if [ $# -lt 2 ]
then
	echo "Folder name or text string was not specified!"
	exit 1
fi

if [ ! -d $1 ]
then
	echo "Folder $1 does not exist!"
	exit 1
fi

FILES=0
LINES=0

for file in $1/*
do
	if [ -f "$file" ]
	then 
		FOUNDLINES=$(grep $2 $file | wc -l)
		if [ $FOUNDLINES -gt 0 ]
		then
			FILES=$((FILES+1))
			LINES=$((LINES+FOUNDLINES))
		fi
	fi 
done

echo "The number of files are $FILES and the number of matching lines are $LINES"
