# 開発3課wiki

## 目次

1. [事業方針資料](#事業方針資料)
1. [職務内容](#職務内容)
1. [業務知識](#業務知識)
1. [業務・担当マップ（miro）](#業務担当マップmiro)
1. [オンボーディング資料](#オンボーディング資料)
1. [アカウント関連](#アカウント関連)
1. [GitHubリポジトリ](#GitHubリポジトリ)
1. [Firebaseプロジェクト](#Firebaseプロジェクト)
1. [Slackチャンネル](#Slackチャンネル)
1. [Google Chat スペース](#Google-Chat-スペース)
1. [Googleドライブ共有](#Googleドライブ共有)
1. [SDKチームの開発について](#SDKチームの開発について)
1. [定例](#定例)
    - [SDKチームMTG](#SDKチームMTG)
    - [AndroidチームMTG](#AndroidチームMTG)
    - [サービス開発部全体会議](#サービス開発部全体会議)
    - [1on1](#1on1)
1. [開発環境関連](#開発環境関連)
1. [採用活動](#採用活動)
1. [部門別オフィス利用体制](#部門別オフィス利用体制)
1. [勤怠関係](#勤怠関係)
1. [HRMOS](#HRMOS)
1. [Googleカレンダー運用方針](#Googleカレンダー運用方針)

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

## オンボーディング資料
- https://drive.google.com/drive/folders/1Cz1Ynk68S3_S9oFi5sKV6NAMKj42XItD

## アカウント関連
* [[動作検証、CI用などの共有アカウント|AccountInfo]]
* [[業務で使用するアカウント、メール|AccountInfo-dev]]

## GitHubリポジトリ
* [[3課で管理しているリポジトリ一覧|GitHubRepositories]]
- https://github.com/fan-ADN/nend-docs
   - nendのドキュメント公開用リポジトリ
   - 概要 https://fancs-dev.slack.com/archives/C0L7YAW3E/p1645518911586799
- Discussion
  - https://github.com/fan-ADN/nendSDK-Document-Private/discussions
  - Discussion機能を使い、チーム内で意見を求めたり、議論して何かを決めたりする際に使います。
- scheduled reminders
  - https://docs.github.com/en/organizations/managing-organization-settings/managing-scheduled-reminders-for-your-organization
  - OrganizationのSettingsにて、Slackへ通知する対象リポジトリを選択、設定しています。追加や変更などしたい場合はマネージャーへ依頼してください。

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
* [[プルリクエストのテンプレート運用ルール|PullRequestTemplateRule]]
* [[nendの公開サンプルアプリのコメント運用ルール|CommentRuleInSample]]
* [CI/CD](https://github.com/fan-ADN/nendSDK-CI-CD-backups/wiki)
  - Bitrise,CircleCI,各種アカウントなど
* [[Code Coverage|CodeCoverage]]
* [Serverチームへの提供アプリなど](https://github.com/fan-ADN/app-From-SDKTeam-To-ServerTeam/wiki)

## 定例
### SDKチームMTG
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
- [[タイムキーパー運用ルール|タイムキーパー運用ルール]]

### AndroidチームMTG

- [[Androidチーム定例MTGについて|Androidチーム定例MTGについて]]

### サービス開発部全体会議
- サービス開発部全員参加
  - 他部署の人が参加する場合もある
- 毎月月末11時〜12時
- 進行役は課でローテーション
- 過去の実施内容
  - [2022/01](https://fancs-dev.slack.com/archives/C2GCVN198/p1643589991129079)
  - [2021/12](https://fancs-dev.slack.com/archives/C2GCVN198/p1640308529023400)
  - [2021/11](https://fancs-dev.slack.com/archives/C2GCVN198/p1638234771008100)
  - [2021/10](https://fancs-dev.slack.com/archives/C2GCVN198/p1635469249002900)

### 1on1
- 2022年下期からHRMOSで運用開始
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1653981269600359

## 開発環境関連
* [検証端末](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3)
* [開発部購入PC](https://docs.google.com/spreadsheets/d/1w0XRaWVvFHCDHUXrEI6KTXsZXUr_pRhu-Ncb9n_EoLQ/edit#gid=229157614)
* [[Apple Developer デバイス登録|AppleDeveloperDevices]]
* [[Apple証明書|AppleCertificate]]
* [[共有マシン|Machines]]
* [Jenkinsセットアップ](https://github.com/fan-ADN/nendSDK-CI-CD-backups/wiki/Jenkinsの使い方)
* [[リモートワーク中のVPNから可能なこと|AvailablesForRemoteWork]]
* SDKテストサーバー
  * https://teamsdk-api-mock.dev.nend.work/
  * 上記サーバーに https://github.com/fan-bot-a8kun/nendSDK-mock-video-server をデプロイして運用している
  * サーバーの再起動やデプロイなどは、インフラ1課へ依頼する
    * https://fancs-dev.slack.com/archives/C0J80E2F8/p1669604347000649?thread_ts=1669022978.426229&cid=C0J80E2F8
  * 経緯
    * https://fancs-dev.slack.com/archives/C0J80E2F8/p1667291926218949
    * https://fancs-dev.slack.com/archives/C0J80E2F8/p1669022978426229

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
  - 各自でGoogleカレンダーに休み予定を登録する
    - 予定タイトル例
　　  - 休み：名前
  - Slackでも必要に応じて連絡
    - 他部署やチーム外で関わっているプロジェクトや突発的な休みなどで、連絡が必要そうであれば適宜判断してください
- 出勤時間が午前10時を過ぎる時、退勤時間が10時以降に遅くなりそうな時
  - 上記チャンネルで一報をお願いしています
    - 体調不良で早退とかも同様です
  - 理由
    - 急ぎで連絡したい時にいつ出勤・退勤するか分からないと困るため

## HRMOS
※リンクを開くには社内VPN接続が必要です。
- [HRMOS操作方法社員マニュアル（スタッフ・管理職共通）](http://video.fancs.com/etc/HRMOS%20_Staff.mp4)
- [HRMOS操作方法社員マニュアル（管理職のみ）](http://video.fancs.com/etc/HRMOS_%20Management.mp4)

## Googleカレンダー運用方針
- 3課の運用方針
  - https://fancs-dev.slack.com/archives/C0J08LR7F/p1671415198392849
- 情シスからの説明資料
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1670315620484169
