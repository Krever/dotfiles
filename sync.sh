#!/bin/bash

set -x

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

pushd "$SCRIPT_DIR"
git ls-files | \
    grep -v $0 | \
    xargs -t -I{} ln -s $(realpath {}) ~/{}
popd
