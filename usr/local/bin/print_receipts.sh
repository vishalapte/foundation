#!/bin/bash

mkdir -p tmp
cp -v *jpg tmp
cd tmp

for imgnum in $(seq -f "%02g" 1 12); do
  jpg="${imgnum}_00.jpg";
  png="${imgnum}_00.png";
  if [ -f ${jpg} ]; then
    convert -size 900x3100 xc:white $jpg -gravity north -composite $png
    convert -size 900x3300 xc:white $png -gravity south -composite $png
    convert -size 1000x3300 xc:white $png -gravity west -composite $png
    convert -size 1200x3300 xc:white $png -gravity east -composite $png
  else
    convert -size 1200x3300 xc:white ${png}
  fi

  jpg="${imgnum}_01.jpg";
  png="${imgnum}_01.png";
  if [ -f ${jpg} ]; then
    convert -size 900x3100 xc:white $jpg -gravity north -composite $png
    convert -size 900x3300 xc:white $png -gravity south -composite $png
    convert -size 1000x3300 xc:white $png -gravity east -composite $png
    convert -size 1200x3300 xc:white $png -gravity west -composite $png
  else
    convert -size 1200x3300 xc:white ${png}
  fi

  convert +append "${imgnum}_*.png" $imgnum.png
done

# convert [0-9][0-9].png expenses.pdf

# rm -v *png

# if [[ $OSTYPE == darwin* ]]; then
#   open expenses.pdf
# fi
