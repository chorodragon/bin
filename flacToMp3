#!/bin/bash

cd "$1"

for file in *.flac; do
    newFile=${file%.*}
    newFile="$newFile.mp3"
    ffmpeg -i "$file" -ab 320k -map_metadata 0 -id3v2_version 3 "$newFile"
done
