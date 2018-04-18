#!/bin/bash
set -o errexit
set -o nounset

VERSION=$(sh scripts/version.sh)
TMP_DIR=$1
BIN=$2
OUT_BINARY=$TMP_DIR/$BIN
mkdir -p $PWD/$TMP_DIR

CGO_ENABLED=0 go build -i -a -v \
    -ldflags "-X main.version=${VERSION}" \
    -o $OUT_BINARY ./cmd/$BIN
echo $OUT_BINARY
