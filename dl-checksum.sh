#!/usr/bin/env sh
VER=0.9.4
DIR=~/Downloads
MIRROR=https://github.com/restic/restic/releases/download/v${VER}

dl()
{
    OS=$1
    PLATFORM=$2
    SUFFIX=$3
    FILE=restic_${VER}_${OS}_${PLATFORM}.${SUFFIX}
    wget -O $DIR/$FILE $MIRROR/$FILE
}

dl darwin 386 bz2
dl darwin amd64 bz2
dl freebsd 386 bz2
dl freebsd amd64 bz2
dl linux 386 bz2
dl linux amd64 bz2
dl linux arm bz2
dl linux arm64 bz2
dl openbsd 386 bz2
dl openbsd amd64 bz2
dl windows 386 zip
dl windows amd64 zip
sha256sum $DIR/restic_${VER}_*

