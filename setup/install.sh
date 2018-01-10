#!/bin/bash

source $1
SOURCE="$PWD/$DIR"
for file in ${FILES[@]}
do
    if ([ -f "$TARGET/$file" ] || [ -d "$TARGET/$file" ]) && [ "$(readlink "$TARGET/$file" )" -ef "$SOURCE/$file" ]
    then
        echo "$file is already linked"
    else
        echo "linking $file"
        ln -s "$SOURCE/$file" "$TARGET/$file"
    fi
done

