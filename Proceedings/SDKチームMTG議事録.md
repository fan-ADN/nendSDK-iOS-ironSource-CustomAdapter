# 2021/05/10 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
  - センサー情報取得やめる対応、レビュー中
    - 準備出来次第、問い合わせのあったメディアに渡す予定
- Android（外山、福岡）
  - iOS側のセンサー情報取得やめると同様
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
  - cocos2d-x、AdobeAirは優先度低め
    - 対応するかプロダクトと相談
  - React Native
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
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
- 出勤簿提出申請
  - 5月10日 11時まで
- プロジェクト別計算シート
  - 5月10日まで
- SDK取得項目について
  - https://fancs-dev.slack.com/archives/C0J80E2F8/p1619517028088100
- リポジトリでissue作成時はプロジェクトボートにも追加をお願いします
  - SDKやアダプタ・プラグインは`nendSDK`
  - アプリ関係は`dev3rd`
  - 自動化できると良いが、GitHubではリポジトリを跨いだ設定は出来ない（外山さんからの提案）
    - 今後より必要性が出てきたらZenhubとか他のツールも検討
- 今週金曜日1on1予定です
- 採用
  - 1名面談予定、日程は調整中
- 3課業務マップを用意しました
  - https://miro.com/app/board/o9J_lKx1F40=/
  - 業務全体を把握しやすくするためのマップ
  - 会社のgmail宛に招待送信済み

## 各自対応の進捗、予定
## 于
お休み
（後ほどSlackで報告共有してもらう）

### 先週の進捗

### 今週の対応予定

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 木南
### 先週の進捗
- SDK7.0.4リリース済み
  - iOS14.5正式版でも問題なし
- iOSのSDKセンター取得項目削除対応
- レビュー

### 今週の対応予定
- SDKのセンサー取得実装を削除する対応
  - 対応終わったらメディアに配布予定
- iOS14.6 beta検証
  - SKA3.0対応向けのパラメータ改修
- XCFramework対応
  - 今週、優先度は低め

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27347

### 問題点、課題
- なし

## 加納
### 先週の進捗
- SDK
  - MoPubアダプタ7.0.4.0 リリース済み
  - レビュー
- GERA
  - レビュー
- 発表準備

### 今週の対応予定
- nendSDK-Flutter
  - プロジェクト自体のアップデート
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- AdMobメディエーションの追従対応
  - ネイティブ広告がv20.0に対応しておらず保留
- nendSDKのKotlinのプルリク反映対応
- 各種レビュー
- LT運営準備

### 今週の対応予定
- nendSDKのKotlinのプルリク反映対応
- AdMob
  - ネイティブ広告のv20.0の対応待ち
- レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27341

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグインv4.0.3準備
  - 開発プロジェクト内のiOSのnendSDKアップデート済み
- Chrome動作チェック
- 採用
  - 求人票アップデート対応
  - スカウト

### 今週の対応予定
- 各種レビュー
- Unityプラグインv4.0.3リリース準備
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
- 検証端末の購入はAppleの法人窓口で購入した方がお得かも
  - 後ほど木南さんから共有あり
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する

## 補足
- なし
