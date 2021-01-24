#!/bin/bash

cd home/
for filename in $(find .); do
    if [ $filename != '.' ]
    then
        if [ -L "$HOME/$filename" ] | [ -f "$HOME/$filename" ]
        then
            echo "$filename" | sed "s|^\./||" | xargs -I '{filename}' rm $HOME'/{filename}';
        fi
        echo "$filename" | sed "s|^\./||" | xargs -I '{filename}' ln -s $PWD'/{filename}' ~;
        echo "linked $filename"
    fi
done