# 2021/07/05 SDKチームMTG議事録
## 参加者
- 外山
- 木南
- 加納
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
    - iOS15 public betaリリースされている
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
      - iOSのバナー、インタースティシャルは完了
      - iOSの動画広告を対応中
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
- 中国語wikiやめたい旨をプロダクトに相談中
  - https://github.com/fan-ADN/nendSDK-request/issues/8
- 勤怠申請7/9まで
- プロジェクト別計算シート7/6まで
- Googleログインのアップデートあり
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1624587083195900
- ワクチン集団摂取の案内あり
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1625133810253800
- 上期評価
  - 7/5~7/9
    - 個人目標管理シート
      - KPT管理シートをExel形式（.xlsx）で添付
    - 個人行動評価シート
      - KPT管理シートに個人行動評価理由も記入
- 評価面談
  - 7/12~7/16で実施予定
- チームMTGのファシリテーターをローテーション制
  - 次回7/12から。
  - やること
    - zoomのURL発行、周知
    - 進行役
    - 議事録

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- nendSDK-iOS
  - 動画広告でフォーマットが異なる広告枠でロードできてしまう
  - テスト実装中
- AdMobメディエーション8.6.0検証
  - 問題なし
- iOS15 beta2検証
  - public betaもリリースされた（ビルド番号は変わったが中身に変化なし）
  - SDK動作問題なし
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
- なし

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - インステの実装完了
  - 動画広告の実装対応中
- レビュー

### 今週の対応予定
- nendSDK-Flutter
  - 動画広告の実装を進める
- KPT整理

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山

### 先週の進捗
- Android SDK v7.1.0のリリース準備
- MoPubカスタムイベントも準備
- KPT整理

### 今週の対応予定
- AndroidのnendSDK v7.1.0リリース準備
- MoPubアダプタもアップデート予定
- 評価の準備

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27397
- https://pjmanage.adn-mobasia.net/issues/27399

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Android12の検証
  - Privacy Sandboxの情報収集
    - 2023年に延期されるらしい
  - 実機で動作検証
  - API diffは一通りチェック済み
- 採用
  - 書類選考の通過者なし
  - スカウトの返信なし

### 今週の対応予定
- 各種レビュー
- Android12の検証
- UnityプラグインのAndroidアップデート対応予定
- 評価準備
- 採用(注力)
  - スカウト

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27398
- https://pjmanage.adn-mobasia.net/issues/27399
  - 途中で外山さんに

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
- 検証端末iPad：Fan-SD019（TODO:福岡）
  - iOS15betaインストール、AppleIDログインまでしておく
  - 7/5~7/9オフィスに戻しておく

## 補足
- なし
