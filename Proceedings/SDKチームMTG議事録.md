# 2021/04/05 SDKチームMTG議事録
## 参加者
- 木南
- 加納
- 外山
- 福岡

## 担当状況と直近予定
### SDK
- iOS
  - iOS14対応（木南）
    - Apple正式リリース待ち
    - v7.0.4としてSDKリリース予定
- Android
    - v7.0.3のリリース済み（外山）
    - 状況を見てKotlin対応のプルリク取り組みを確認、検討したい
- アダプタ（加納、外山）
  - MoPub
    - nendSDKとMoPubSDKのアップデート
      - [iOS](https://github.com/fan-ADN/nendSDK-iOS-CustomEvents/issues/77)
      - [Android](https://github.com/fan-ADN/nendSDK-Android-CustomEvents/issues/96)
  - AdMob
    - 新しいバージョンが出たら動作検証
      - [iOS](https://github.com/fan-ADN/nendSDK-iOS-admob-mediation-source)
      - [Android](https://github.com/fan-ADN/nendSDK-Android-admob-mediation-source)
    - 基本的にgoogle側でアップデートはやってくれる
    - 何か問題をあれば改修方針を検討・対応する
      - googleリポジトリでissue作るとかプルリク出すなど
      - nendSDK側の修正が必要なら我々で改修必要
- プラグイン系（福岡）
  - Unity
    - [v4.0.3](https://github.com/fan-ADN/nendSDK-Unity-source/issues/148)リリース準備
    - iOSはnendSDKのリリース待ち
    - AndroidはnendSDKのアップデート対応着手
  - cocos2d-x、AdobeAirは優先度低め
    - 対応するかプロダクトと相談
- 全体の細かいタスク（于）
  - 小さめのリファクタリングや残タスクなど
  - 継続
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA
  - 機能開発
    - 加納さんから竹尾さんに引き継ぎ完了
  - コードレビュー（加納、外山、福岡）
    - 今後も3課メンバーで継続する

## 共有事項
- 3月のプロジェクト別計算シート入力をお願いします
  - 3/7（今週水曜）まで
- 勤怠
  - 4月からkinnosukeのみ利用
  - 出社時はkinnosukeでオフィス出勤/退勤を押す
    - これで出社日数分の交通費が支給される仕様
    - 交通費の別途経費精算は不要
    - 翌々月の給与と一緒に振り込まれる
- プロダクトに要望出したい内容を整理（他にもあれば随時知らせてください）
  - Android4.4のサポート切りたい？
  - iOS9のサポートも切れるか？
  - CoreMotion,CoreLocationを外したい
  - nend動画のIP制限の条件（GDPR,CCPA）などをwikiのFAQにも開示しても良いか？

## 各自対応の進捗、予定
## 于
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
- iOS14.4.2の検証
  - 問題なし
- iOS14.5 beta6の検証
  - SKA2.0/2.2ともに問題なし
- XCFramework対応
  - 対応中
  - ResourceBundleの取り込みがおかしいかも？
- レビュー
- サービス開発部全体会議の資料作成

### 今週の対応予定
- iOS14.5検証
- XCFramework対応
- SKAナレッジ共有会

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 加納
### 先週の進捗
- GERA音声フィードの引き継ぎ
- AdMob,MoPubの検証
- MoPubのissue対応
- レビュー

### 今週の対応予定
- 問い合わせ対応
  - M1 Macでのビルドエラーの件
- AdMobドキュメント更新されたいた
  - ネイティブ広告のサンプルの実装

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- AndroidのnendSDK7.0.3リリース
- MoPubのアップデート準備

### 今週の対応予定
- MoPubアップデート対応
- nendSDKのKotlinのプルリクの件も見る
- AdMobのSDK検証
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各レビュー
- Unity+AdMobメディエーションの動画インステ用バンドルのリリース
- Unityプラグインv4.0.3準備
  - AndroidのSDKからアップデート着手
- サービス開発部全体会議の準備
- codecov状況確認

### 今週の対応予定
- 各種レビュー
- Unityプラグインv4.0.3準備
- codecov状況確認

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27305
  - Unity,Androidでアプリ内のタップが出来なくなる件

### 問題点、課題
- 問い合わせ対応（進展がなく様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 有給取得

## 補足
- なし
