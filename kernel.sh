#!/bin/bash

KDIR=$1
cwd=$(pwd)

if [ -z $KDIR ]; then
  echo "Enter dir kernel"
  exit 1
fi

IMG="$KDIR/out/arch/arm64/boot/Image"
DTBO="$KDIR/out/arch/arm64/boot/dtbo.img"
DTB="$KDIR/out/arch/arm64/boot/dts/qcom"

cp ${IMG} ${cwd}
cp ${DTBO} ${cwd}
find ${DTB} -name "*.dtb" -exec cat {} + > ${cwd}/dtb
