#! /bin/bash

echo "----the start ----"

git config --global user.name "{GITHUB_ACTOR}"
git config --global user.email "{INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace


python3 /usr/bin/feed.p
git add -A && git commit -m "success"

git push --set-upstream origin main

echo "---the end ---"