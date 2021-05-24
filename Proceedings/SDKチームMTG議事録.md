# 2021/05/24 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
  - SKA検証(SKA3.0対応)アプリの改修
    - サーバーサイドの対応方針待ち
- Android（外山、福岡）
  - Kotlin対応のPR反映中
  - Android 12のキャッチアップ中
  - センサー情報取得を止める対応予定
- アダプタ（加納、外山、木南）
  - MoPub
    - 今週中に両OSのアダプタをリリース
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
    - 今週中にv4.0.3をリリース
    - その後はしばらく対応予定なし
  - Flutter（加納）
    - 全体的なアップデート対応中
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 全体の細かいタスク
  - 于さんに[対応途中のissue](https://github.com/fan-ADN/nendSDK-iOS-source/issues/339)をコミットしてもらった
  - 後で木南さんに確認してもらう
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南、福岡）
  - コードレビュー
  - 適宜サポート、アドバイス
  - 開発タスクへのアサインは当面未定

## 共有事項
- 5/26 LT大会
  - 飛び入り参加OK
- SDKのviewableの仕様をwikiに追記
  - 木南さんに対応依頼中
- 採用
  - 1名面談調整中


## 各自対応の進捗、予定

## 木南
### 先週の進捗
- SKA検証アプリの改修中
  - SKA2.2対応のプルリクのレビュー(動作確認)をお願いします
- iOS14.7の調査
  - リリースノートには更新内容が書かれていない
- iOS14.6 RC
  - Xcodeが更新されていないので確認できていない
  - コンソール上で確認まではOK
- レビュー

### 今週の対応予定
- SKA検証アプリの改修
  - SKAバージョン変更を手動で行う対応
- iOS14.6リリースされたら確認予定
- SDKの仕様をwikiに追記
- XCFramework対応
  - 優先度は低め

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27361

### 問題点、課題
- なし

## 加納
### 先週の進捗
- SDK
  - MoPubアダプタのリリース準備
  - Flutterプラグイン実装
    - 主にバナーの実装
  - レビュー
- GERA
  - レビュー

### 今週の対応予定
- SDK
  - Flutterプラグイン実装
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- SDK
  - MoPubアダプタのリリース準備
- nendSDKのKotlinのプルリク反映対応
- 各種レビュー
- LT運営準備

### 今週の対応予定
- SDK
  - MoPubアダプタのリリース準備
  - Androidのセンター取得情報やめる対応
  - Kotlinのプルリク反映対応
  - AdMob
    - ネイティブ広告のv20.0の対応待ち
- 各種レビュー
- LT運営準備

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグインv4.0.3準備
  - パッケージ作成とテスト
- 採用
  - 求人票アップデート対応
  - スカウト

### 今週の対応予定
- 各種レビュー
- Android12キャッチアップ
- 新卒研修資料準備
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
