#!/bin/bash

KDIR=$1
cwd=$(pwd)

HEADER=out/headers/include
TECHPACK=out/headers/techpack/audio/include
KHEADER=sm8150/kernel-headers

if [ -z $KDIR ]; then
  echo "Enter dir kernel"
  exit 1
fi

mkdir -p $cwd/$KHEADER

make -C $KDIR headers_install O=out ARCH=arm64 INSTALL_HDR_PATH=headers

cp -rf $KDIR/$HEADER/* $cwd/$KHEADER
cp -rf $KDIR/$TECHPACK/* $cwd/$KHEADER
