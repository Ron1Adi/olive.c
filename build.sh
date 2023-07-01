#!/bin/sh

set -xe

cc -Wall -Wextra -o example example.c
./example

ls | grep ppm | sed 's/.ppm//' | xargs -Ixx convert xx.ppm xx.png

cp *.ppm *.png /sdcard/Download/TUTORIAL/

rm *.ppm && mv *.png ./imgs/

echo "all ppm and png files has moved to [sdcard/Download/TUTORIAL/]"
echo "all ppm files has been removed"
echo "all png files has moved to [./imgs]"
