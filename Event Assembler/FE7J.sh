#!/bin/sh

addFE7J(){
    echo "$1"
    echo "\n\n#Generated by FE7J.sh" >> "$1"
    ./FE7J.py "$1" >> "$1"
}

addFE7JForDir(){
    for file in "$1"/*
    do
        if test -f "$file"
        then
            if [ "${file##*.}"x = "txt"x ]
            then
                addFE7J "$file"
            fi
        elif test -d "$file"
        then
            addFE7JForDir "$file"
        fi
    done
}

path="Language Raws"
addFE7JForDir "$path"
