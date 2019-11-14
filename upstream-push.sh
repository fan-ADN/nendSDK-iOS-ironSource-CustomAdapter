#!/bin/sh

if [ $# -ne 2 ]; then
  echo "指定された引数は$#個です。" 1>&2
  echo "引数は2個です。" 1>&2
  echo "1つ目の引数にミラー元のリポジトリを指定してください" 1>&2
  echo "2つ目の引数にミラー先のリポジトリを指定してください" 1>&2
  exit 1
fi

SOURCE_REPOSITORY_NAME="$1"
TARGET_REPOSITORY_NAME="$2"

function upstreaming() {
    git clone --mirror git@github.com:fan-ADN/${SOURCE_REPOSITORY_NAME}.git
    cd ${SOURCE_REPOSITORY_NAME}.git
    git config user.name "fan-bot-a8kun"
    git config user.email "bot-a8kun@fancs.com" # <- このメルアドは存在しません(・∀・)b

    git remote set-branches origin 'heads/*'
    git remote set-url --push origin git@github.com:fan-ADN/${SOURCE_REPOSITORY_NAME}.git
    git fetch -p origin

    git for-each-ref --format="ref=%(refname)" --shell refs/pull | \
    while read entry
    do
        eval $entry
        git update-ref -d $ref
    done

    git push --mirror
    cd ..
    rm -rf ${SOURCE_REPOSITORY_NAME}.git

    git clone git@github.com:fan-ADN/${TARGET_REPOSITORY_NAME}.git
    cd ${TARGET_REPOSITORY_NAME}
    git config user.name "fan-bot-a8kun"
    git config user.email "bot-a8kun@fancs.com" # <- このメルアドは存在しません(・∀・)b

    git remote add upstream git@github.com:fan-ADN/${SOURCE_REPOSITORY_NAME}.git
    git pull upstream master --no-edit
    git push origin master
    cd ..
    rm -rf ${TARGET_REPOSITORY_NAME}
}

upstreaming ${SOURCE_REPOSITORY_NAME} ${TARGET_REPOSITORY_NAME}
