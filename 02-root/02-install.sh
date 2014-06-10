#!/bin/bash

adb remount;

adb push ./raw/su /system/xbin;
adb push ./raw/chattr /system/xbin;
adb push ./raw/daemonsu /system/xbin;

adb shell chmod 755 /system/xbin/su;
adb shell chmod 755 /system/xbin/chattr;
adb shell chmod 755 /system/xbin/daemonsu;

adb push ./raw/default.prop /default.prop;
adb shell chmod 644 /default.prop;

# This won't work sadly
# adb shell echo "ro.secure=0" >> /system/build.prop
# adb shell echo "ro.debuggable=1" >> /system/build.prop

adb reboot;

