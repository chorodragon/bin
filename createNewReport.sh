#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [Directory Name]"
    exit 1
fi 

projectFolder=$1

mkdir $projectFolder
cd $projectFolder

touch titlepage.tex
touch report.tex
touch chapter1.tex
mkdir images
