#!/bin/bash
set -o errexit
set -o nounset

if [ -z ${GOBIN+x} ]; then
    export GOBIN=$GOPATH/bin
    curl https://glide.sh/get | sh
fi

go test -v ./...
$GOBIN/gometalinter --deadline=900s --skip=vendor ./...
