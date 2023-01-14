#!/bin/bash
./bin/git-dfs.sh "(git push $*) || pwd && echo CLOSE"
git push $*