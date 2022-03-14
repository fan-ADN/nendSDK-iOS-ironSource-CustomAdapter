# 開発3課wiki

## 事業方針資料
* [[事業方針|BusinessPlans]]

## 職務内容
* [[職務内容|JobDesctiption]]

## 業務知識
* [[業務知識まとめ|Knowledge]]

## 業務・担当マップ（miro）
- 業務マップ
  - https://miro.com/app/board/o9J_lKx1F40=/
- タスク担当者マップ
  - https://miro.com/app/board/o9J_l7XSXo4=/

## 新入社員向け準備項目
- [オンボーディング-入社後の準備・説明項目](https://docs.google.com/spreadsheets/d/1SIkB-qQ8i1uztdORpsn1rP7cB8Y2FZ1Ay6a6QTyv_Yg/edit#gid=0)
- [オンボーディング-SDK・アプリ開発の業務項目](https://docs.google.com/spreadsheets/d/1VSEeV0542WmI36tIg3yHrIB0O40awM4bKQnqTaRmmu8/edit#gid=601940104)

## アカウント関連
* [[動作検証、CI用などの共有アカウント|AccountInfo]]
* [[業務で使用するアカウント、メール|AccountInfo-dev]]

## GitHubリポジトリ
* [[3課で管理しているリポジトリ一覧|GitHubRepositories]]
- https://github.com/fan-ADN/nend-docs
   - nendのドキュメント公開用リポジトリ
   - 概要 https://fancs-dev.slack.com/archives/C0L7YAW3E/p1645518911586799

## Firebaseプロジェクト
* [[3課で管理しているFirebaseプロジェクト一覧|FirebaseProjects]]

## Slackチャンネル
* [[業務で使用する各チャンネルの説明|Slack-channels]]

## Google Chat スペース
* [dev3rd](https://mail.google.com/mail/u/0/#chat/space/AAAAeaKPUb0)
  * Slackが使えない時の連絡用に使います

## Googleドライブ共有
* [[業務で使用する共有フォルダなどの説明|GoogleDriveInfo]]

## SDKチームの開発について
* [[開発フローについて|Workflow-Of-Development]]
  * [[レビューについて|About-Review]]
    * [[非公開→公開リポジトリへのミラーリングやUpstreamについて|Mirroring-automation]]
* [[GitHubのIssueのラベル運用ルール|GitHubIssueLabelRule]]
* [CI/CD](https://github.com/fan-ADN/nendSDK-CI-CD-backups/wiki)
* [[Code Coverage|CodeCoverage]]
* [Serverチームへの提供アプリなど](https://github.com/fan-ADN/app-From-SDKTeam-To-ServerTeam/wiki)

## 定例MTG
- SDKチームMTG
  - 開発3課全員参加
  - 毎週月曜日11時〜12時
    - 祝日、休みの人が過半数などの場合は別日に実施
  - [[議事録|SDKチームMTG議事録]]
  - 議事録の運用手順
    - 事前準備
      1. https://github.com/fan-ADN/nendSDK-Document-Private をクローンする
      2. masterブランチをチェックアウトする
    - 議事録を書く
      1. [SDKチームMTG議事録.md](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/Proceedings/SDKチームMTG議事録.md)ファイルを編集する
    - 議事録をwikiに反映する  
      1. masterブランチにコミット, プッシュする
      2. [mirroring-to-wiki.command](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/mirroring-to-wiki.command)コマンドを実行する
- サービス開発部全体会議
  - サービス開発部全員参加
    - 他部署の人が参加する場合もある
  - 毎月月末11時〜12時
  - 進行役は課でローテーション
  - 過去の実施内容
    - [2022/01](https://fancs-dev.slack.com/archives/C2GCVN198/p1643589991129079)
    - [2021/12](https://fancs-dev.slack.com/archives/C2GCVN198/p1640308529023400)
    - [2021/11](https://fancs-dev.slack.com/archives/C2GCVN198/p1638234771008100)
    - [2021/10](https://fancs-dev.slack.com/archives/C2GCVN198/p1635469249002900)

## 開発環境関連
* [検証端末](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3)
* [[Apple Developer デバイス登録|AppleDeveloperDevices]]
* [[Apple証明書|AppleCertificate]]
* [[共有マシン|Machines]]
* [Jenkinsセットアップ](https://github.com/fan-ADN/nendSDK-CI-CD-backups/wiki/Jenkinsの使い方)
* [[リモートワーク中のVPNから可能なこと|AvailablesForRemoteWork]]

## 採用活動
- [[採用活動についての説明|RecruitmentActivity]]
- [[採用面接勉強会|recruiting]]
- [[参考情報|recruiting-references]]

## 部門別オフィス利用体制
- https://fancs-dev.slack.com/archives/C2GCVN198/p1633658706043300
- ADP事業部（7皆）
  - 偶数月：月、木、金
  - 奇数月：月、火、水
- 注意
  - A8事業部の利用日に出社すると座席数に余裕がないかもしれません。
  - 出社する時はなるべくそこを避けた方が良さそうです。

## 勤怠関係
- dev3rdチャンネル
  - 勤怠や連絡用のSlackチャンネル
  - 出勤・退勤・休憩・休み・早退などの報告に使うことが多い
- 休む時
  - 事前にkinnosukeで休暇申請
    - 急な体調不良などの場合は当日でもOK
  - サイボウズで「サービス開発部（所属する組織）」に休み予定を登録する
  - 通常予定ではなく、`期間予定`で登録する
  - 所属の課にも登録するか、Slackでも連絡するかは任意
    - 他部署やチーム外で関わっているプロジェクトや突発的な休みなどで、連絡が必要そうであれば適宜判断してください
  - 参照
    - https://fancs-dev.slack.com/archives/C2GCVN198/p1605842622051800
- 出勤時間が午前10時を過ぎる時、退勤時間が遅くなりそうな時
  - 上記チャンネルで一報をお願いしています
    - 体調不良で早退とかも同様です
  - 理由
    - 急ぎで連絡したい時にいつ出勤・退勤するか分からないと困るため
