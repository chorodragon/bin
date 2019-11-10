#!/bin/bash

root=$1
rootPath=$2
destPath="${3}/${rootPath}"
cd "${1}"

convert_dir_songs () {
    cd "${1}"
    for file in *
    do
        if [ -d "$file" ]; then
            convert_dir_songs "$file" "${2}/${file}"
        else
            if [[ $file == *.flac ]]; then
                filename="${file%.*}"
                mkdir -p "${2}"
                echo "Converting ... ${file}"
                ffmpeg -i "${file}" -acodec libvorbis "${2}/${filename}.ogg"
            fi

        fi
    done
    cd ..
}

convert_dir_songs "$rootPath" "$destPath"
