#!/bin/bash

git rev-parse --verify cleanup 2> /dev/null
if [ $? -ne 0 ]; then
    git checkout -b cleanup
else
    git checkout cleanup
fi

date >> log

git add log
git commit -m "Cleaup"
git push --set-upstream origin cleanup --force

git checkout main
