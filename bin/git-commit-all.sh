#!/bin/bash
# intended to be executed from top of dir
./bin/git-dfs.sh "pwd && date > .date && git add . && git commit -a -m '${*}'"