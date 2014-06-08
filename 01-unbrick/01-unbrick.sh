#!/bin/bash

fastboot flash system ./raw/system.img;
fastboot boot ./raw/recovery.img;

