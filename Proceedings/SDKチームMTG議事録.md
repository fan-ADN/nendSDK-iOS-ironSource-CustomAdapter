# 2021/06/14 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
  - SKA検証アプリの改修
  - SKA3.0はプロダクトやサーバーサイドの方針、対応待ち
  - WWDC2021
    - 専用issueで情報をまとめ
- Android（外山、福岡）
  - Kotlin対応のPR反映中
  - Android 12のキャッチアップ
- アダプタ（加納、外山、木南）
  - MoPub
    - 新しいバージョンがリリースされたら追従してリリースする
      - スケジュール感は要相談
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（福岡）
    - しばらく対応予定なし
    - nendSDKを新たにリリースしたら追従する
  - Flutter（加納）
    - 全体的なアップデート対応
      - インタースティシャルの進行中
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
- 追加の保管場所を確保、QiitaTeamページも更新済み
  - https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3
  - 普段よく使う端末類は従来通りのキャビネットです
- 3課wiki更新
  - 新卒研修であがったQ&Aを追加
    - https://github.com/fan-ADN/nendSDK-Document-Private/commit/8d7e505084958445cd79d5a0d2677e16d20b3145
  - 共有マシンのSelf-hosted runnersの設定に少し追記
    - https://github.com/fan-ADN/nendSDK-Document-Private/commit/68ba213b390045049ab6462b060c0bf8e3b45cc4
- 採用
  - 先週金曜に1名面談
    - 現状の3課のリソース体制だと受け入れが難しそうでした
    - GERAチームに紹介してみる方向で、採用企画に話を進めてもらっている

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- WWDC2021キャッチアップ
  - https://github.com/fan-ADN/nendSDK-iOS-source/issues/822 にまとめ中
  - その他主にプライバシー関連の調査と共有
- SKA検証アプリの改修中
  - 静止画側のテスト中
- iOS15 beta検証
  - Xcode13で動作確認済み、問題なし
- レビュー

### 今週の対応予定
- SKA検証アプリの改修
  - 静止画側の実装
- nendSDK-iOS
  - 動画広告でフォーマットが異なる広告枠でロードできてしまう
- 優先度は低め
  - XCFramework対応
  - SDKのviewableの仕様などwikiに追記

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27377

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - インステの実装
- レビュー消化
- カジュアル面談

### 今週の対応予定
- nendSDK-Flutter
  - インステ実装

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- nendSDK-Android
  - Kotlinコルーチン改修対応
- 各種レビュー

### 今週の対応予定
- Android12調査
  - new neature
  - Pixel4aを使った動作検証
- nendSDK-Android
  - 動画広告の広告枠が異なっていてもロードできる問題対応のAndroid版
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Android12キャッチアップ
- 採用
  - 求人票アップデート対応済み
  - スカウト

### 今週の対応予定
- 各種レビュー
- Android12キャッチアップ
- 採用(注力)
  - 1名面接予定
  - スカウト
- Chrome動作チェック

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
- 福岡
  - 今週月曜と火曜休み
- 加納
  - 明日からオフィスに出社予定
    - 通信端末の制限がきてしまったため（情シスに相談できないか）
- 外山
  - 来週月曜に休み予定
- 木南
  - 通院のためどこかで抜ける

## 補足
- なし
