#!/bin/bash

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- sun8i-v3s-indicator-fun.dtb
cp arch/arm/boot/dts/sun8i-v3s-indicator-fun.dtb ../zero_imager/
cd ../zero_imager
./update-scr.sh
cp ./boot.scr ~/mountedSD/
cp ./sun8i-v3s-indicator-fun.dtb ~/mountedSD/

