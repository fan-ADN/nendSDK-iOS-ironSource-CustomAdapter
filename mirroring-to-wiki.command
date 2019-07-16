#!/bin/sh

git clone --mirror git@github.com:fan-ADN/nendSDK-Document-Private.git
cd nendSDK-Document-Private.git
git remote set-branches origin 'heads/*'
git remote set-url --push origin git@github.com:fan-ADN/nendSDK-Document-Private.wiki.git
git fetch -p origin

git for-each-ref --format="ref=%(refname)" --shell refs/pull | \
while read entry
do
  eval $entry
  git update-ref -d $ref
done

git push --mirror
cd ..
#rm -rf nendSDK-Document-Private.git
