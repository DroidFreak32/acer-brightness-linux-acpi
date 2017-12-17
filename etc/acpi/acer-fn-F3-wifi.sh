#!/bin/sh
logger "[ACPI] Fn+F3 pressed, WiFi rfkill state toggled"
rfpath=/sys/class/rfkill/rfkill2/state
rf=`cat $rfpath`
case $rf in
    0) echo 1 >$rfpath;;
    1) echo 0 >$rfpath;;
esac