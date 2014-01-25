#!/bin/bash
#Build the file from an input pdf
usage() {
	echo "Usage: $0 <PDF File to split>
	exit 1
}
	
[[ $# -eq 0 ]] && usage

find . -name "*exp*.pdf" | xargs -d"\n" rm
pdftk $1 burst output gez.geez.exp%d.pdf 
