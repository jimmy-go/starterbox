#!/bin/bash
set -o errexit
set -o nounset

RUN_BIN=$(./scripts/build.sh tmp sample)
echo "Binary file: $RUN_BIN"
$RUN_BIN
