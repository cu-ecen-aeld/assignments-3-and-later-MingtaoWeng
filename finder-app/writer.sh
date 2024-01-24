#!/bin/sh
# Writer script for assignment 1
# Author: Mingtao Weng

if [ $# -lt 2 ]
then
	echo "File name or text string was not specified!"
	exit 1
fi

DIR=$(dirname $1)
if [ ! -d "$DIR" ]
then
	mkdir -p "$DIR"
fi

echo $2 > $1
if [ $? -ne 0 ]
then
	echo "Failed to create file to write!"
	exit 1
fi


