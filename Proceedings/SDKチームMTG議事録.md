# 2021/05/17 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - v7.0.5リリース済み
    - センサー情報取得止めた対応版
  - 引き続き、beta版検証
- Android（外山、福岡）
  - iOS側のセンサー情報取得止めた対応と同様
  - Kotlin対応のPR反映
  - Android 12のキャッチアップ
- アダプタ（加納、外山、木南）
  - MoPub
    - 新しいMoPubSDKがリリースされたら優先して追従対応しリリースする
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - [iOS](https://github.com/fan-ADN/nendSDK-iOS-admob-mediation-source)
      - [Android](https://github.com/fan-ADN/nendSDK-Android-admob-mediation-source)
    - 基本的にgoogle側でアップデートはやってくれる
    - 何か問題をあれば改修方針を検討・対応する
      - googleリポジトリでissue作るとかプルリク出すなど
      - nendSDK側の修正が必要なら我々で改修必要
- プラグイン
  - Unity（福岡）
    - [v4.0.3](https://github.com/fan-ADN/nendSDK-Unity-source/issues/148)リリース準備
  - Flutter（加納）
    - 全体的なアップデート対応
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 全体の細かいタスク（于）
  - 業務引き継ぎに専念してもらう
  - 今後レビューにはアサインしない
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南、福岡）
  - コードレビュー
  - 適宜サポート、アドバイス
  - 開発タスクへのアサインは当面未定

## 共有事項
- 于さん、ご退職
  - 最終勤務日は5月末頃
- 採用
  - 1名面談調整中
- SDKのviewableの仕様をwikiに追記
  - 木南さんに対応依頼中

## 各自対応の進捗、予定
## 于
お休み  
後でSlackで報告共有してもらう

### 先週の進捗

### 今週の対応予定

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 木南
### 先週の進捗
- iOSのSDK7.0.5 リリース済み
- SKA検証アプリの改修
- GERAの魔改造SDK作成
- レビュー

### 今週の対応予定
- SKA検証アプリの改修
  - SKA3.0対応
- iOS14.6 beta検証
  - Xcode12.6がまだリリースされていないのでデバッグできない
- XCFramework対応
  - 今週、優先度は低め

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27347
- https://pjmanage.adn-mobasia.net/issues/27306

### 問題点、課題
- なし

## 加納
### 先週の進捗
- SDK
  - Flutterプラグイン実装
    - iOS側でバナー動作するまで確認済み
  - レビュー
- GERA
  - レビュー

### 今週の対応予定
- SDK
  - MoPubアダプタの対応
  - その後、Flutterプラグイン対応
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- SDK
  - AndroidのKotlin対応のリファクタリング
  - Promise対応の修正
  - MoPubアダプタの検証
- AdMobメディエーションの追従対応
  - ネイティブ広告がv20.0に対応しておらず保留
- nendSDKのKotlinのプルリク反映対応
- 各種レビュー
- LT運営準備

### 今週の対応予定
- SDK
  - MoPubアダプタ対応
  - Androidのセンター取得情報やめる対応
  - Kotlinのプルリク反映対応
  - AdMob
    - ネイティブ広告のv20.0の対応待ち
- 各種レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27342

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグインv4.0.3準備
  - iOSのnendSDKをv7.0.5にアップデートしてパッケージ作成し直し
- 採用
  - 求人票アップデート対応
  - スカウト

### 今週の対応予定
- 各種レビュー
- Unityプラグインv4.0.3リリース準備
- Chrome動作チェック
- 採用
  - 求人票アップデートの調整
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
