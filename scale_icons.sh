#!/bin/bash
for f in ./icons/*/16x16/*.png
do
    mkdir -p $(dirname $f)/../$1/
    ffmpeg -y -i $f -vf scale=$1:flags=neighbor $(dirname $f)/../$1/$(basename $f)
done
