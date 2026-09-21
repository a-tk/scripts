#!/bin/bash

for r in $(find */ -type f -name README.md) ; do 
	echo $r
done
