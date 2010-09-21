#!/bin/sh -x
# hack: Merge the latest changes from the master branch into your current branch
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
CURRENT="${ref#refs/heads/}"
git checkout master
git svn rebase
git checkout ${CURRENT}
git rebase master
