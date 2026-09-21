#!/bin/bash

ASSN=

for z in *.zip ; do
	(
		NAME=$(echo $z | sed 's/\(^[a-z]*\).*/\1/i')
		echo $NAME
		mkdir "$NAME-$ASSN"
		unzip "$z" -d "$NAME-$ASSN"
)
done

