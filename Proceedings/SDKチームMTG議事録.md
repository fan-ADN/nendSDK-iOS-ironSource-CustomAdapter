# 2021/04/26 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS
  - SKA2.2対応（木南）
    - v7.0.4リリース完了
    - betaの検証
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
      - iOSはnendSDK-7.0.4のアップデート対応着手
      - 時間は2週間もらっています（営業日での換算のはず）
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
      - iOSはnendSDK-7.0.4のアップデート対応着手
      - 時間は2週間もらっています（営業日での換算のはず）
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
  - 有効期限までに確認
- 給与システム「Workcloud」利用期限
  - 2021年4月30日まで
  - 過去の給与明細と源泉徴収票が必要な場合は4月30日までにダウンロード
- 明日SDK取得項目についてプロダクトとのMTGあり
  - 後ほど共有します

- 採用
  - 1名面談予定、日程は調整中
- 3課業務マップを用意しました
  - https://miro.com/app/board/o9J_lKx1F40=/
  - 業務全体を把握しやすくするためのマップ
  - 会社のgmail宛に招待送信済み

## 各自対応の進捗、予定
## 于
お休み

### 先週の進捗

### 今週の対応予定

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 木南
### 先週の進捗
- SDK7.0.4リリース準備
  - SKA2.2のview throughの動作確認もOK
- SKAナレッジ共有会実施
- iOS14.6betaの検証
  - SKA3.0利用できるようになった
  - SDK側では大きな変更なさそう
- レビュー

### 今週の対応予定
- SDKのセンサー取得実装を削除する対応
  - 対応終わったらメディアに配布予定
- iOS14.6 beta検証
- iOS 14.5 正式版検証
- XCFramework対応

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 加納
### 先週の進捗
- SDK
  - レビュー
- GERA
  - レビュー
- 発表準備

### 今週の対応予定
- MoPub
  - nendSDKアップデート対応
  - こっちを優先
- nendSDK-Flutter
  - プロジェクト自体のアップデート
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- nendSDKのKotlinのプルリクの確認
- 各種レビュー
- LT運営準備

### 今週の対応予定
- nendSDKのKotlinのプルリクの確認
  - 少しづつマージ、対応していく方針
- AdMob
  - 新バージョンのSDKの確認、検証
  - 一旦こちらを優先する
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- M1 Macセットアップ
- codecovの導入状況調査
  - 3課wikiに追記済み
- 各種レビュー
- Chrome動作チェック
- 採用
  - 求人票アップデート対応
  - スカウト

### 今週の対応予定
- 各種レビュー
- Unityプラグインv4.0.3準備着手
- 採用
  - 求人票アップデートの調整
  - スカウト

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27338
  - Androidで広告表示エラーの件（おそらく修正済みの事象）
- https://pjmanage.adn-mobasia.net/issues/27337
  - LINEマンガでBGMずれる件

### 問題点、課題
- 問い合わせ対応（進展なし、様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 適宜有給取得
  - 休暇申請、サイボウズ登録をお願いします。
- GW等で長期間休暇する人は事前共有をお願いします。

## 補足
- MoPubとUnityのSDKアップデート対応の工数2週間について
  - 営業日での換算で良いか念の為確認する
