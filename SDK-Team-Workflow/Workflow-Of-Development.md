# 開発フローについて

要は[GitHub Flow](https://gist.github.com/Gab-km/3705015)で行います。

> GitHub Flowとは何だろうか？
>
> masterブランチのものは何であれデプロイ可能である
新しい何かに取り組む際は、説明的な名前のブランチをmasterから作成する（例: new-oauth2-scopes）
作成したブランチにローカルでコミットし、サーバー上の同じ名前のブランチにも定期的に作業内容をpushする
フィードバックや助言が欲しい時、ブランチをマージしてもよいと思ったときは、プルリクエストを作成する
他の誰かがレビューをして機能にOKを出してくれたら、あなたはコードをmasterへマージすることができる
マージをしてmasterへpushしたら、直ちにデプロイをする
これがフローのすべてだ。とてもシンプルかつ効率的で、かなり大きなチームでも機能する。

1. [非公開リポジトリの開発フロー](#private_repo)
    - SDK本体
    - プラグイン本体
      - Unity
      - cocos2d-x
      - Adobe Air
    - MoPubアダプタ
1. [公開リポジトリの開発フロー](#public_repo)
    - 各種サンプルやWiki
    - React Nativeモジュール
    - Flutterプラグイン
1. [リリース作業フロー](#publishing)

<a name="private_repo"></a>
## 非公開リポジトリの開発フロー

ここで扱うソースコードはnend内部で扱い、公開は行いません。  
※一部スクリプトやブリッジ用のコードは隠していませんが・・

![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/SDK-Team-Workflow/Workflow-Of-Develop-Private.png)

<a name="public_repo"></a>
## 公開リポジトリの開発フロー

ユーザにリポジトリ一式（Git履歴含めて）公開する成果物の開発フローです。  
不要なGit履歴や内部情報を公開しないようにするため、不明点や疑問点は逐次挙げてください。

![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/SDK-Team-Workflow/Workflow-Of-Develop-Public.png)

<a name="publishing"></a>
## リリース作業フロー

[非公開→公開リポジトリへのミラーリングやUpstreamについて](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Mirroring-automation)は、順次自動化していきます。

![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/SDK-Team-Workflow/Workflow-Of-Publishing.png)
