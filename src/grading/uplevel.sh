#!/bin/bash

NAME=

for f in $(find */ -name $NAME) ; do
	
	# SRCDIR is the subdirectory actually containing student work
	# find it by getting the all content up to the last 
	# trailing slash.
	# Reminder, () delimits a capture group
	SRCDIR=$(echo $f | sed 's/\(^.*\/\).*/\1/')

	# TOPDIR is the top directory in the heirarchy
	#
	# Again, use a capture group. Circumflex to 
	# grab everything that is not a '/'
	TOPDIR=$(echo $f | sed 's/\(^[^\/]*\).*/\1/')

	echo $SRCDIR
	echo $TOPDIR

	mv $SRCDIR/* $TOPDIR/

done
