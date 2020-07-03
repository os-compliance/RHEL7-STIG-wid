#!/bin/bash

# If a command fails then the deploy stops
set -e
git add .
msg="update $(date)"
if [ -n "$*" ]; then
 msg="$*"
fi
git commit -m "$msg"
printf "\033[0;32mPush to widgit.birau.com\033[0m\n"
git push origin master
printf "\033[0;32mPush to git.paa.co.id (10.11.8.20)\033[0m\n"
git push paa --all
printf "\033[0;32mPush to github\033[0m\n"
git push github --all
