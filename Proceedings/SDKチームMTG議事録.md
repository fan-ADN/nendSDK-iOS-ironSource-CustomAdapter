# 2021/04/19 SDKチームMTG議事録
## 参加者
- 木南
- 于
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
    - 全体的なアップデートに着手
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
- 労働条件変更通知書
  - 今週送付される予定
- 採用
  - 1名面談予定、日程は調整中
- 3課業務マップを用意しました
  - https://miro.com/app/board/o9J_lKx1F40=/
  - 業務全体を把握しやすくするためのマップ
  - 会社のgmail宛に招待送信済み

## 各自対応の進捗、予定
## 于

### 先週の進捗
- SKAのidentifierのログ対応
  - テスト実装
- Unity新バージョンの検証
  - wiki更新
- UnityのUIテスト構築調査

### 今週の対応予定
- SKAのidentifierのログ対応
  - 再レビュー依頼
- UnityのUIテスト構築調査
- iOSの他のissue対応

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 木南
### 先週の進捗
- SKAナレッジ共有会の準備
  - 組み込み手順のまとめ
- iOS14.5 beta8検証
  - プロダクトのロードができない問題がある
  - iOS14.5betaのフィードバックで送信済み、返答待ち
- サーバーサイドとのSKA検証
  - SKA2.2の対応で進める予定
  - nendSDK自体には影響なし
- レビュー

### 今週の対応予定
- iOS14.5検証、リリース準備
  - SKA対応関連をマージして準備する
- XCFramework対応
- SKAナレッジ共有会の準備

### 問い合わせ対応
- 27327
  - Unityプラグインのビルドエラーの件

### 問題点、課題
- なし

## 加納
### 先週の進捗
- AdMob
  - UIテスト再実装
- nendSDK-Flutter
  - プロジェクト自体のアップデート
- 各種レビュー

### 今週の対応予定
- AdMob
  - UIテスト再実装
- nendSDK-Flutter
    - AndroidのnendSDKの更新から進める
    - iOS/Androidの広告を表示部分などから進めていく予定
- サービス開発部全体会議の発表資料準備
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- AdMobメディエーションの確認
- nendSDKのKotlinのプルリクの確認

### 今週の対応予定
- nendSDKのKotlinのプルリクの確認
  - 少しづつマージ、対応していく方針
- AdMob
  - 新バージョンのSDKの確認、検証
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- AdMobメディエーションのCIメンテ
- Chrome動作チェック
- 採用
  - 求人票アップデート対応

### 今週の対応予定
- 各種レビュー
- Unityプラグインv4.0.3準備
- M1 macのCIセットアップ
- codecov状況確認
- 採用
  - 求人票アップデートの調整
  - スカウト

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27330

### 問題点、課題
- 問い合わせ対応（進展なし、様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 適宜有給取得
- 休暇
  - 福岡：4/30（他にも休暇取るかも？検討中）
  - 決まったらサイボウズに登録もお願いします

## 補足
- なし
