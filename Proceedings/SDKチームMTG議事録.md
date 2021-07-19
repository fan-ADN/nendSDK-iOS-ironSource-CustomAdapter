# 2021/07/19 SDKチームMTG議事録
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
  - iCloud+のPrivate Relay
    - 検証方法は[wiki](https://github.com/fan-ADN/nendSDK-iOS-source/wiki/Private-Relay)に追記中（木南さん）
    - [検証端末リスト/アカウント、パス](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3#%E3%82%A2%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%83%91%E3%82%B9)
- Android（外山、福岡）
  - Android 12の検証継続
- アダプタ（加納、外山、木南）
  - MoPub
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（福岡）
    - Androidのv7.1.0に追従して来週中にリリース予定
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
- iOS,Android共通
  - なし
- 開発３課のwikiについて
  - OpenBiddingについて追記(https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge#その他お役立ち情報)
- 夏季休暇
  - 取得可能期間 2021年7月1日 ~ 2021年9月30日
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1626071861302900
- 健康診断
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1626078255318100
- カオナビの行動評価/目標管理の「確定」まで進めてほしい

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- nendSDK-iOS
  - 動画広告でフォーマットが異なる広告枠でロードできてしまう
    - 完了
  - URLスキーム対応
    - 実装中(今週中にPRを出す予定)
    - 来週にSDKをリリース予定
- iOS15 beta3確認
  - Release Notesを確認したところ大きい変更点はなし
  - 実機での検証は行なっていない
  - SafariでIPを隠す機能が追加
- レビュー

### 今週の対応予定
- iOS15 beta検証
- nendSDK-iOS
  - ver7.0.6用改修 (7/26の週にリリースを目処)
    - アプリターゲ関連機能の削除
- ナレッジ共有準備
  - 書き始める
- 優先度は低め
  - XCFramework対応

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - 動画リワード広告の実装
- レビュー

### 今週の対応予定
- nendSDK-Flutter
  - 動画リワード広告の実装を進める
  - 共通化
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山

### 先週の進捗
- nendSDK-Android
  - v7.1.0リリース
- nendSDK-Android-MoPub-CustomEvent
  - v7.1.0.0リリース
- Android 12の調査
- 上期評価周り(KPT整理、MTG、評価修正など)
- OpenBidding関連の問い合わせ
- レビュー(GERA多め)

### 今週の対応予定
- Android 12の調査/検証続き

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27411

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグイン
  - リリース準備
    - 位置情報取得をやめる対応
    - 今週までにレビュー、動作検証を終えたい
- 上期評価の準備

### 今週の対応予定
- UnityプラグインのAndroidアップデート対応予定
- 各種レビュー
- Android12の検証
- 上期評価
- 採用(注力)
  - スカウト

### 問い合わせ対応
- なし

### 問題点、課題
- なし

----

## その他
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
  - 7/26(月)早退(福岡)
  - 7/27(火)にオリパラ休暇(加納)

## 次回ファシリテーター（木南->外山->加納->福岡の順番で）
- 加納さん
