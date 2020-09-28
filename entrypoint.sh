#!/bin/sh
set -e
echo "Formatting $GITHUB_REPOSITORY"
sh -c "yapf --in-place --recursive --style='{based_on_style: pep8}' $GITHUB_WORKSPACE $*"
