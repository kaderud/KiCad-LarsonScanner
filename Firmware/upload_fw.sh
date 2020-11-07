#!/bin/bash

AVRDUDE="${HOME}/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin"
AVRCONF="${HOME}/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/etc/avrdude.conf"

SERIALPORT=/dev/ttyUSB0
BAUDRATE=19200

FIRMWARE="LarsonScanner.ino.hex"

echo -e "Firmware upload command:\n[${AVRDUDE}/avrdude -C${AVRCONF} -v -patmega328p -cstk500v1 -P${SERIALPORT} -b${BAUDRATE} -Uflash:w:${FIRMWARE}:i]"

${AVRDUDE}/avrdude -C${AVRCONF} -v -patmega328p -cstk500v1 -P${SERIALPORT} -b${BAUDRATE} -Uflash:w:${FIRMWARE}:i
