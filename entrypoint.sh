#!/bin/sh
set -e
echo "Formatting $GITHUB_REPOSITORY"
sh -c "yapf --in-place --recursive $GITHUB_WORKSPACE $*"
