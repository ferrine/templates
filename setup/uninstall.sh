#!/bin/bash

source $1

for file in ${FILES[@]}
do 
    if [ -f "$TARGET/$file" ] && [ ! -L "$TARGET/$file" ]
    then
        echo "$TARGET/$file exists and is not a symlink"
    elif [ -L "$TARGET/$file" ]
    then
	echo "unlinking $file"
        rm "$TARGET/$file"
    else
        echo ""$TARGET/$file does not exist""
    fi
done
