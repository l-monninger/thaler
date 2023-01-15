#!/bin/bash
# https://stackoverflow.com/questions/14846967/git-submodule-foreach-robust-way-to-recursively-commit-a-child-module-first
SCRIPT=$(realpath "$0")
SCRIPTDIR=$(dirname "$SCRIPT")
echo $1
git submodule foreach "$SCRIPT \"$1\""
eval $1