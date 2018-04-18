#!/bin/bash
set -o errexit
set -o nounset

rm -rf vendor
rm -rf .cover
rm -rf bin
rm -rf tmp
rm -f coverage.out
rm -f coverage.html
