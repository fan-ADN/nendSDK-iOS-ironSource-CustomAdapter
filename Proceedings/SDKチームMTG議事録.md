# 2021/04/12 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS
  - SKA2.2対応（木南）
    - betaの検証中
    - Apple正式リリース待ち
    - v7.0.4としてSDKリリース予定
    - センサー情報取得やめる
      - クラッシュ報告の問い合わせと関係している可能性があるため対処しておく
      - v7.0.4には含めない
      - 問い合わせメディアには先行して渡すのが良さそう
- Android（外山、福岡）
  - iOS側のセンサー情報取得やめると同様
  - Kotlin対応のPR反映
  - Android 12のキャッチアップ
- アダプタ（加納、外山）
  - MoPub
    - nendSDKとMoPubSDKのアップデート
      - 新バージョンがリリースされたら追従していく
      - iOSはnendSDK-7.0.4リリース待ち
    - その他のタスクは状況を見つつ合間で対応する
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
      - iOSはnendSDKのリリース待ち
      - AndroidはnendSDKのアップデート対応済み
  - Flutter（加納）
    - 全体的なアップデートに取り組む
  - cocos2d-x、AdobeAirは優先度低め
    - 対応するかプロダクトと相談
  - React Native
    - 問い合わせが来たら確認する程度にしておき、当面は放置
- 全体の細かいタスク（于）
  - 小さめのリファクタリングや残タスクなど
  - 継続中
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、福岡）
  - コードレビュー
  - 適宜サポート、アドバイス
  - 開発タスクへのアサインは当面未定

## 共有事項
- プロジェクト別計算シート
  - 全員記入済み
- Redmineクライアント証明書更新
  - https://fancs-dev.slack.com/archives/C0DKNUY1F/p1617859410007500
- 新卒研修
  - 6/11予定
  - [研修資料のアップデート](https://github.com/fan-ADN/nendSDK-Document-Private/issues/45)は福岡の方で準備
    - 更新したらプルリク出します
- 3課からプロダクトへいくつか要望依頼済み
  - [nendSDK-request](https://github.com/fan-ADN/nendSDK-request/issues)のissueを参照
  - 要望に対して了承済みの内容は情報を見て着手予定
- LT大会アンケート
  - 運営メンバーとして外山さん参加！
  - 運営メンバー、LT発表者も多数集まっている様子

## 各自対応の進捗、予定
## 于
- 通院で欠席のため、後でSlackで共有してもらう

### 先週の進捗
- お休み

### 今週の対応予定
- お休み

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 木南
### 先週の進捗
- iOS14.5 beta7検証
  - プロダクトのロードができない問題がある
  - iOS14.5betaのフィードバックで送信済み、返答待ち
- サーバーサイドとのSKA検証
  - SKA2.0/2.2ともにnend側は問題ない
  - MMP側でうまく動いていないかも？
  - SKA2.2対応を採用するか未確定な状態になっている
    - nendSDK側には影響なし
- レビュー

### 今週の対応予定
- iOS14.5検証、リリース準備
- XCFramework対応
- SKAナレッジ共有会の準備

### 問い合わせ対応
- 27306
  - LINEマンガのクラッシュの件
  - nendSDKv7.0.4リリース後、改修版を渡す予定で進める

### 問題点、課題
- なし

## 加納
### 先週の進捗
- AdMob
  - ネイティブ広告実装やり直し
  - リファクタリング
  - UIテスト再実装
- 各種レビュー

### 今週の対応予定
- AdMob
  - UIテスト再実装
- nendSDK-Flutterの調査、対応検討など

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- MoPub
  - アダプタ7.0.3.0リリース
- nendSDKのKotlinのプルリクの確認

### 今週の対応予定
- nendSDKのKotlinのプルリクの確認
- AdMob
  - 新バージョンのSDKの検証
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグインv4.0.3準備
  - AndroidのnendSDKアップデート完了
- プロダクトへの要望まとめ
- codecov状況確認
- 採用
  - 求人票アップデート対応

### 今週の対応予定
- 各種レビュー
- M1 Macセットアップ
- Unityプラグインv4.0.3準備
- codecov状況確認
- 採用
  - 求人票アップデートの調整

### 問い合わせ対応
- なし

### 問題点、課題
- 問い合わせ対応（進展なし、様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 有給取得
- 3課業務マップを用意しました（miroで作成）
  - https://miro.com/app/board/o9J_lKx1F40=/
  - 3課の業務全体を把握しやすくするためのマップ
  - 会社のgmailの方に招待リンク送ります

## 補足
- なし
