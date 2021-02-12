# レビューについて

基本的には、全てGitHubのPullRequestで行うようにします。

GitHubで行うことのメリットとしては以下が考えられます。

- 修正箇所のコードに直接コメントを書き込める
  - ○○.javaの○○メソッドの○○行目の○○が・・・といった説明が不要になる。
- 問題なければその場ですぐmasterにmergeできる
  - 更にその後で作業ブランチを削除することもできる。全てボタン1クリックで実行できる。
- PullRequestの新規作成や更新がSlackに通知される
  - チーム内で各タスクの進捗状況が共有できる。

1. [レビューを依頼する前に](#before_pull_request)
1. [レビュワーについて](#reviewer)
1. [テストについて](#testing)

<a name="before_pull_request"></a>
## レビューを依頼する前に...

- [ ] セルフチェックおよびテストをしっかりと行うこと
- [ ] レビュワーが見やすいようにコードのフォーマットを行うこと
  - Android
    - Android Studioの`Reformat Code`オススメです
  - iOS
    - [ClangFormatがオススメ](https://github.com/fan-ADN/nendSDK-iOS-source/wiki/ClangFormatについて)です
  - Unity
    - MonoDevelopかVisual Studioのフォーマットを使ってください。
  - Cocos2dx
    - AndroidとiOSでのやり方と同じ。C++にもClang Formatが使えるはず。
  - React Native
    - JSについては検討中
    - ブリッジ用のコードはAndroidとiOSでのやり方と同じ。
  - Flutter
    - [公式のフォーマットで](https://flutter.dev/docs/development/tools/formatting)
    - ブリッジ用のコードはAndroidとiOSでのやり方と同じ。

![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/SDK-Team-Workflow/Workflow-Of-Develop-Private.png)

<a name="reviewer"></a>
## レビュワーについて

レビュワーの人数は臨機応変に変更可としますが、
- 基本的には **最低2人以上** をレビュワーにアサインして下さい。
- 改修内容の規模や緊急対応などでレビュワーが1人となる場合は、マネージャーや他のメンバーに相談して下さい。
  - もし緊急時で相談できる人が誰も居なかった場合は、山本さんに相談して下さい。

![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/SDK-Team-Workflow/Workflow-Of-Develop-Public.png)

<a name="testing"></a>
## テストについて

以下を全て満たすテストを行ってください。

- 機能要件チェック
- 変更箇所のC0カバレッジ100%
- デグレチェック（必要に応じて）

またUnitテストやUIテストは **不可能または著しくコストがかかる場合** を除いて作成必須です。
