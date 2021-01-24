#!/bin/bash
for image in $(ls | grep xml); do
    id=$(cat $image | grep filename | cut -d ">" -f 2 | cut -d "<" -f 1)
    sed -i "s/<\/path>/\/$id<\/path>/g" $image

done

