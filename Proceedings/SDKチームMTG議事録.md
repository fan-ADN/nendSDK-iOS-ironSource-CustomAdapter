# 2022/03/14 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 外山

--------------------------------------------------------------------------------

## 担当状況と直近予定

### SDK

- iOS（木南、船越）
  - SDK v7.2.0リリース済み
  - iOS15周り
    - iOS 15.4RC動作確認済み
      - 影響なしのため、全体共有もなし
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
  - SKAN3.0
    - `#skan30対応`チャンネルで経緯説明、今後やり取りする
    - 3/7MTGのスレッド
      - https://fancs-dev.slack.com/archives/C0L7YAW3E/p1646360371323099
  - 細かいタスクを模索中
- Android（外山、福岡）
  - 馬場さん 3/16(水)入社
  - Android 13 Preview 1がリリースされた
    - まずは情報収集からはじめる(毎週月曜行う)
      - Beta 1がリリースされる4月までには機能の調査と影響範囲を調べておきたい
      - 端末購入はそのときに用意しておきたい
  - Android12 L動作確認して問題はなさそう
  - 細かいタスクを模索中
- AdMobメディエーションアダプター用検証サンプル（外山、木南）
  - 新バージョンがリリースされたら動作検証しておく
    - Android: v20.5.0 対応完了
    - Android: v20.6.0 対応予定
    - iOS: v9.0.0やその後のバージョンも未確認
      - プラグイン系リリース後、合間で進める
  - Android/iOS: adaptive bannerのドキュメント記載の件はgoogleに確認中
    - 直近タスクが落ち着いたら確認してみる
  - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（船越、外山、福岡）
    - nendSDKのアップデート対応 (iOS, Android)
      - v4.3.0リリース済み
    - 新バージョンがリリースされたら動作検証しておく
  - Flutter（外山、木南）
    - nendSDKのアップデート対応 (iOS, Android)
      - v1.0.2リリース済み
    - チームのリソース確保次第、今後を検討する
  - React Native は優先度低め
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - ReactNativeリポジトリのdependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照
- ironSourceカスタムアダプター対応の調査（外山、木南）
  - 調査報告１回目完了　iOS継続する
  - https://github.com/fan-ADN/nendSDK-request/issues/9

### 新規事業アプリ開発

- ハイパーカジュアルゲーム事業
  - 2022/3/14始動予定

--------------------------------------------------------------------------------

## 共有事項
- オンボーディング項目
  - SDKチーム共有フォルダ/オンボーディング-SDK・アプリ開発の業務項目
    - https://docs.google.com/spreadsheets/d/1VSEeV0542WmI36tIg3yHrIB0O40awM4bKQnqTaRmmu8/edit#gid=601940104
  - SDKチーム共有フォルダ/オンボーディング-入社後の準備・説明項目
    - https://docs.google.com/spreadsheets/d/1SIkB-qQ8i1uztdORpsn1rP7cB8Y2FZ1Ay6a6QTyv_Yg/edit#gid=0
- PCのログオン時のパスワードの有効期限の通知について
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1646880806641829
- 「感染拡大対策モード」変更について
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1646958600325659
  - 3/14から通常モード
- zoomからgoogleMeetへ切り替え
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1646967892079299
  - 3/18から実施

--------------------------------------------------------------------------------

## 各自対応の進捗、予定

### 木南

#### 先週の進捗
- Flutterプラグイン
  - v1.0.2リリース完了
- Unityプラグインのレビュー
- iOS15.4 RC検証
  - nendに影響なし

#### 今週の対応予定
- ハイパーカジュアルゲーム
- ironSource調査
- SKAN3.0のMTG、必要に応じて作業

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27576 【iOSSDK】admobメディエーションでのエラーについて
- https://pjmanage.adn-mobasia.net/issues/27578 【iOS/AndroidSDK】Admobで動画リワードが配信されない
  - 上記２件AdMobの管理画面の問題、AdMobに問い合わせていただくよう案内

#### 問題点、課題

- なし

### 外山

#### 先週の進捗

- nendSDK-Android
  - admob-mediation
    - v20.5.0対応 → マージ済み
  - Android 13調査
    - Features and APIs Overview周りの調査
      - 今のところSDKへの影響はなし
  - 新入社員受け入れ周り
    - MTG、資料調整など
- 1on1レポート記入
- 各種レビュー

#### 今週の対応予定

- nendSDK-Android
  - Android 13の調査(本日)
  - nendSDKのレクチャー周り(3/16～)
  - Kotlin DSLへの置き換え検討
  - 細かいissue(リファクタリング等)がないか考える
- ironSourceカスタムイベントアダプタ周りの調査
  - 何かあれば
- HCG事業まわり
  - 何かあれば

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27579
  - めずらしいRNの問い合わせ
    - バグっぽいことを教えた上でプロダクトでの使用を推奨しない旨を返信

#### 問題点、課題

- なし

### 船越

#### 先週の進捗
- Unityプラグイン
  - v4.3.0リリース
- wikiにナレッジ追記
  - EDM4U, doxygen
- 1on1  
- 各種レビュー

#### 今週の対応予定

- SwiftUIを用いたサンプルアプリの作成
  - 動画ネイティブ、ネイティブ作成
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- Pull request templateのissue作成  
- Qiita記事　草案
- HCG開発の用意必要であれば。
- レビュー

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- レビュー
- Chromeバージョンチェック
- 新メンバーの受け入れ準備
  - 申請手続き関係は一通り完了
  - オンボーディング項目の整理
    - Android側は一旦完了、あとは適宜追記
- 採用
  - 書類選考済み（１名）
  - スカウト継続
- タスク、スケジュールの諸々調整

#### 今週の対応予定

- 各種レビュー
- 検証端末にauthenticationを設定する with toyama（木南さん待ち）
  - 今日やる。
- ハイパーカジュアル開発キックオフ予定
- 1on1
  - 2021年下期評価フィードバックも
- 新メンバーの受け入れ準備
  - 3/16入社面談
- 採用
  - スカウト継続
- Chromeバージョンチェック
- Android13調査、検証

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27577
  - `ERR_FILE_NOT_FOUND`エラーの件
  - 回答済み

#### 問題点、課題

- なし


--------------------------------------------------------------------------------

## その他
- **適宜有給取得**
  - 休暇申請&サイボウズ登録をお願いします
    - できれば休暇前日までにやる
  - サイボウズ登録時はサービス開発部の欄にも登録する
- **勤怠申請について、Slackで改めてアナウンスする**
- 木南さん
  - 3/16,17,18 リフレッシュ休暇
- 船越さん
  - 3/16昼休憩長めに取る
- 船越さん提案
  - PRテンプレートについて
  - issue各リポジトリに作る
- 福岡から提案
  - チームMTGの議事録の運用方法について
    - 事前共有して、ファシリテーターの負担を減らし、全体の進行の効率化したい。
  - 3/22以降、馬場さんと交流タイム設けたい
    - Qiitaプロフィール記事で自己紹介


## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 木南さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
