#!/bin/bash

cat ./raw/update_aa.bin ./raw/update_ab.bin ./raw/update_ac.bin > ./update.zip;
adb sideload update.zip;

