#!/bin/bash
## Returns git repo info with format "site_service/user/repo"
set -o errexit
set -o nounset

G_PKG=$(git config --get remote.origin.url)
G_PKG=$(echo "$G_PKG" | cut -d '@' -f2)
G_PKG=$(echo $G_PKG | sed "s/:/\//g")
G_PKG=$(echo $G_PKG | sed "s/\.git//g")
echo $G_PKG
