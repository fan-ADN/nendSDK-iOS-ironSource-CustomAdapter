# GitHub Flowについて

サービス開発部では、GitHub Flowで開発を行なっている

## GitHub Flowとは

GitHubを利用したシンプルで強力なワークフローである

こっそり始めるGit／GitHub超入門  
https://www.atmarkit.co.jp/ait/articles/1708/01/news015.html

```
「GitHub Flow」は「GitHub」の開発で使用されているワークフローであり、「git-flow」に比べてシンプルな構成になっています。

　1日に複数回デプロイを行うようなWebアプリケーションの開発に適しています。
```

<!-- git-flowのイメージ -->
- git-flowのイメージ (git-flowについては詳細な説明はここでは行わない)
![git-flow image](https://user-images.githubusercontent.com/9563320/53868934-78c57c80-403a-11e9-9fef-e89c3f72b505.jpg)

<!-- GitHub Flowのイメージ -->
- GitHub Flowのイメージ
![GitHub Flow image](https://user-images.githubusercontent.com/9563320/53868888-5cc1db00-403a-11e9-8231-bd789499080e.jpg)

<!-- GitHubのnetworkの図 -->
- GitHub上で見られるグラフデータ
![GitHub network image](https://user-images.githubusercontent.com/9563320/53868964-8aa71f80-403a-11e9-82e3-3056240ab1f2.png)

### 6つのルール

GitHub Flowには以下の6つのルールがあります。【ルール1】が最も重要で、それ以外のルールは【ルール1】を実現するために存在します。

- 【ルール1】masterブランチは常にデプロイ可能である
- 【ルール2】作業用ブランチをmasterから作成する（例：new-oauth2-scopes）
- 【ルール3】作業用ブランチを定期的にプッシュする
- 【ルール4】プルリクエストを活用する
- 【ルール5】プルリクエストが承認されたらmasterへマージする
- 【ルール6】masterへのマージが完了したら直ちにデプロイを行う

## 開発３課での例

<!-- 開発フローの図 -->
![Dev 3 flow](https://user-images.githubusercontent.com/9563320/53869012-a5799400-403a-11e9-87bc-5dac074fb076.png)

### 作業チケット起票

GitHub上でissueを作成する
<!-- GitHubのissueのSS -->
![issue](https://user-images.githubusercontent.com/9563320/53869044-bfb37200-403a-11e9-9bdc-1cc6720f5ada.png)


### 作業ブランチ作成

ローカルにクローンしたリポジトリで作業ブランチを作成する  
開発３課では、`issue#` +  `issueの番号`でブランチを作成している
<!-- sourcetreeのTreeのSS -->
![branch](https://user-images.githubusercontent.com/9563320/53869088-d5c13280-403a-11e9-8503-ba25a42da12c.png)

### 開発、コミット＆プッシュ
ローカル環境で開発を行います  
任意のタイミングでコミット＆プッシュする

### プルリクエスト作成
テストまで完了したらプルリクエストを作成しコードレビューを依頼する

![pull request](https://user-images.githubusercontent.com/9563320/53869118-e40f4e80-403a-11e9-9c1a-ccc23371db02.png)


### masterブランチにマージ、プルリクエストクローズ、作業チケットクローズ
レビューが完了したらmasterブランチにマージし、プルリクエストと作業チケット(issue)をクローズする  
（issueがプルリクエストにリンクされている場合は、issueは自動的にクローズされる）

![marge](https://user-images.githubusercontent.com/9563320/53869150-f4bfc480-403a-11e9-842e-30e59185d337.png)
