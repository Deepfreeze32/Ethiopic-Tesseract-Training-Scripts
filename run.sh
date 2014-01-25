#!/bin/bash
#Run all Tesseract scripts!

usage() {
        echo "Usage: $0 <PDF File to split>
        exit 1
}

[[ $# -eq 0 ]] && usage

./build.sh $1
a='find . -name "*exp*.pdf" | wc -l'
./adjust.sh $a
./convert.sh $a
./train.sh $a
