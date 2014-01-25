#!/bin/bash
#Conversion script
usage() {
	echo "Usage: $0 <number of files>"
	exit 1
}

[[ $# -eq 0 ]] && usage

for ((i=0;i<$1;i++))
do
	convert -density 300 -depth 4 gez.geez.exp$i.pdf gez.geez.exp$i.tif
done
