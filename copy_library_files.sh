#!/bin/bash

WHOAMI=$(whoami)
PWD=$(pwd)
FILES=$(find lib/ -type f)
WINE_LTSPICE="/home/$WHOAMI/.wine/drive_c/Program Files/LTC/LTspiceXVII"
# For some reason, my libs are actually here
OTHER_LTSPICE="/home/$WHOAMI/LTspiceXVII"

for file in $FILES; do
        FILE=$PWD/$file
        WINE_DIR=$WINE_LTSPICE/$(dirname $file)/
        OTHER_DIR=$OTHER_LTSPICE/$(dirname $file)/
	echo "copying $FILE to:"
        echo " --> $WINE_DIR"
        echo " --> $OTHER_DIR"
        echo ""
	cp $FILE "$WINE_DIR"
	cp $FILE "$OTHER_DIR"
done
