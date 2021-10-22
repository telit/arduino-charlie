#!/bin/sh -x

ARDUINO=arduino
SKETCH_NAME="SFUBoot.ino"
SKETCH="$PWD/$SKETCH_NAME"
BUILD_PATH="$PWD/build"
OUTPUT_PATH="../../src/boot"

if [[ "$OSTYPE" == "darwin"* ]]; then
	ARDUINO="/Applications/Arduino.app/Contents/MacOS/Arduino"
fi

buildSFUBootSketch() {
	BOARD=$1
	DESTINATION=$2

	$ARDUINO --verify --board $BOARD --preserve-temp-files --pref build.path="$BUILD_PATH" $SKETCH
	cat "$BUILD_PATH/$SKETCH_NAME.bin" | xxd -include > $DESTINATION
	rm -rf "$BUILD_PATH"
}

mkdir -p "$OUTPUT_PATH"


buildSFUBootSketch "Telit-Board:samd:charlie_native" "$OUTPUT_PATH/tltcharlie.h"
