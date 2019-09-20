# 非公開→公開リポジトリへのミラーリングやUpstreamについて

1. 通常通り、非公開リポジトリで作業とPRでレビュー
1. レビューOKだったらmasterへマージ
1. 公開するタイミングになったら`master`ブランチに`v*`でタグをプッシュ
   - 例えば`v1.0.0`みたいな感じで
1. CIのWorkFlowで自動的に公開リポジトリに反映

## 注意点

`ref`が残っているとPullRequestのレビュー内容とかが外部に出てしまうので、必ず消してから公開すること

#### 例
```shell
git fetch -p origin

git for-each-ref --format="ref=%(refname)" --shell refs/pull | \
while read entry
do
    eval $entry
    git update-ref -d $ref
done
```

## 運用のやり方

1. [Upstreamの運用](#upstream)
    - 公開側だけにコミットした差分（GitHub Actionsの`.yml`とか）があり、上書きでは困るもの向け
1. [Mirroringの運用](#mirroring)
    - Wikiとか、Git履歴を都度上書きで構わないもの向け

<a name="upstream"></a>
### Upstreamの運用

##### スクリプトファイル
https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/upstream-push.sh

##### ↑の内容
```shell
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

function upstreaming {
    git clone --mirror git@github.com:fan-ADN/${SOURCE_REPOSITORY_NAME}.git
    cd ${SOURCE_REPOSITORY_NAME}.git
    git config user.name "fan-bot-a8kun"
    git config user.email "bot-a8kun@fancs.com" # <- このメルアドは存在しません(・∀・)b

    git fetch -p origin
    git for-each-ref --format="ref=%(refname)" --shell refs/pull | \
    while read entry
    do
        eval $entry
        git update-ref -d $ref
    done

    git remote add upstream origin git@github.com:fan-ADN/${TARGET_REPOSITORY_NAME}.git
    git push upstream master
    cd -
    rm -rf ${SOURCE_REPOSITORY_NAME}.git
}

upstreaming ${SOURCE_REPOSITORY_NAME} ${TARGET_REPOSITORY_NAME}
```


<a name="mirroring"></a>
### Mirroringの運用

##### スクリプトファイル
https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/mirror-push.sh

##### ↑の内容
```shell
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

function mirroring {
    git clone --mirror git@github.com:fan-ADN/${SOURCE_REPOSITORY_NAME}.git
    cd ${SOURCE_REPOSITORY_NAME}.git
    git config user.name "fan-bot-a8kun"
    git config user.email "bot-a8kun@fancs.com" # <- このメルアドは存在しません(・∀・)b

    git remote set-branches origin 'heads/*'
    git remote set-url --push origin git@github.com:fan-ADN/${TARGET_REPOSITORY_NAME}.git
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
}

mirroring ${SOURCE_REPOSITORY_NAME} ${TARGET_REPOSITORY_NAME}
```
