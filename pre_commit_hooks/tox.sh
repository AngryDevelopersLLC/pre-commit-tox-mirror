#!/bin/bash

args=("$@")
git stash -q --keep-index
tox $args
RESULT=$?
git stash pop -q
[ $RESULT -ne 0 ] && exit 1
exit 0
