#!/bin/bash
set -e

workdir=.cover
profile="$workdir/cover.out"
mode=count

generate_cover_data() {
    mkdir -p "$workdir"

    for pkg in "$@"; do
        f="$workdir/$(echo $pkg | tr / -).cover"
        go test -covermode="$mode" -coverprofile="$f" "$pkg"
    done

    echo "mode: $mode" >"$profile"
    grep -h -v "^mode:" "$workdir"/*.cover >>"$profile"
}

show_cover_report() {
    go tool cover -${1}="$profile" -o "$workdir"/coverage.html
}

generate_cover_data $(go list ./...)
show_cover_report html
