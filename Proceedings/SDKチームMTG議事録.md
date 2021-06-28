# 2021/06/28 SDKチームMTG議事録
## 参加者
- 外山
- 木南
- 加納
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
  - SKA検証アプリの改修
  - SKA3.0はプロダクトやサーバーサイドの方針、対応待ち
  - WWDC2021
    - 専用issueで情報をまとめ
  - iCloud+のPrivate Relay
    - 検証方法は[wiki](https://github.com/fan-ADN/nendSDK-iOS-source/wiki/Private-Relay)に追記中（木南さん）
    - [検証端末リスト/アカウント、パス](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3#%E3%82%A2%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%83%91%E3%82%B9)
- Android（外山、福岡）
  - v7.1.0 来週中（7/9）までにリリース予定
  - Android 12の検証継続
- アダプタ（加納、外山、木南）
  - MoPub
    - Androidのv7.1.0に追従して来週中（7/9）までにリリース予定
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（福岡）
    - Androidのv7.1.0に追従して来週中（7/9）までにリリース予定
  - Flutter（加納）
    - 全体的なアップデート対応
      - インタースティシャル対応中
      - その次は動画広告対応予定
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南、福岡）
  - コードレビュー
  - 適宜サポート、アドバイス
  - 開発タスクへのアサインは当面未定

## 共有事項
- ワクチン接種時の勤怠の取扱いについて
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1624250061171200
- iOS15とSKA検証用端末の配備方針
  - サーバーチーム（予定）
    - Fan-SD006（iPad Pro、iOS 15 beta）
    - Fan-SD019（iPad、iOS 15 beta、現在はSDKチーム用で使っているが、サーバーチームの検証に使いたいと言われたら渡す予備端末）
    - これらで足りなければ追加で購入してもらう必要ありそう
  - SDKチーム
    - Fan-SD016（iPhone 12 Pro Max、iOS 15 beta、iOS 15 検証用）
    - Fan-SD019（iPad、iOS 14.7 beta、SKA3.0 検証用）
    - Fan-SD021、Fan-SD020（iPad、iOS 14.5、SKA2.2 検証用、どちらか必要になったらiOS 15 検証用にアップデートする）
    - Fan-SD018（iPad、iOS 14.4.2、SKA2.0 検証用）
    - Fan-SD133（iPhone6S Plus、iOS14.6 以上にアップデート予定、SKA2.2 検証用）
- 7/2（金） 16:00-17:30
  - チーム内でワークショップ実施予定
- 次回1on1は7/9または7/16で検討中

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- iOS15 beta2検証
  - SDK動作問題なし
  - iCloud Private Relayはbeta2で動作すうrようになった
  - IPアドレスの設定項目が変わっていた
  - ios-14チャンネルでも共有済み
- SKA検証アプリの改修中
  - レビュー中
- 問い合わせから発覚した問題
  - 動画リクエストの広告枠ID不正でもリクエストが成功してしまう件
  - テスト中
- レビュー

### 今週の対応予定
- iOS15 beta検証
- ナレッジ共有準備
  - 書き始める
- nendSDK-iOS
  - 動画広告でフォーマットが異なる広告枠でロードできてしまう
- 優先度は低め
  - XCFramework対応

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27390
  - サーバーチームに調査依頼済み

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - インステのPR作成、レビュー対応
  - 動画広告の調査、実装
- レビュー

### 今週の対応予定
- nendSDK-Flutter
  - 動画広告の実装を進める

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山

### 先週の進捗
- Android12 beta2の検証
- KPT整理

### 今週の対応予定
- AndroidのnendSDK v7.1.0リリース準備
  - MoPubアダプタもアップデート予定

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27393
- https://pjmanage.adn-mobasia.net/issues/27390

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Android12キャッチアップ
  - 実機で検証中
- 採用
  - スカウト検索、リクエスト送信
    - 反応得られず

### 今週の対応予定
- 各種レビュー
- Android12の検証
- UnityプラグインのAndroidアップデート対応予定
- サービス開発部全体会議発表
- 採用(注力)
  - スカウト

### 問い合わせ対応
- なし

### 問題点、課題
- 問い合わせ対応（進展なし、様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する

## 補足
- なし
