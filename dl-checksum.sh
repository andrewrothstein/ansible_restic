#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/restic/restic/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local suffix=${4:-bz2}
    local platform="${os}_${arch}"
    local file=restic_${ver}_${os}_${arch}.${suffix}
    local url=$MIRROR/v$ver/$file
    local lfile=$DIR/$file
    if [ ! -e $lfile ]; then
        wget -q -O $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin 386
    dl $ver darwin amd64
    dl $ver freebsd 386
    dl $ver freebsd amd64
    dl $ver linux 386
    dl $ver linux amd64
    dl $ver linux arm
    dl $ver linux arm64
    dl $ver openbsd 386
    dl $ver openbsd amd64
    dl $ver windows 386 zip
    dl $ver windows amd64 zip
}

dl_ver ${1:-0.9.6}
