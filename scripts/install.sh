#!/bin/bash
set -o errexit
set -o nounset

if [ -z ${GOBIN+x} ]; then
    export GOBIN=$GOPATH/bin
    curl https://glide.sh/get | sh
fi

go get -u -v github.com/alecthomas/gometalinter
$GOBIN/gometalinter --install
glide up
