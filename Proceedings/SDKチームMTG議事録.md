# 2021/11/01 SDKチームMTG議事録
## 参加者
- 加納
- 福岡
- 船越
- 木南
- 外山

## 担当状況と直近予定
### SDK
- iOS（木南、加納）
  - SKA検証(SKA3.0対応)アプリの改修
    - サーバーサイドの対応方針待ち
  - iOS15周り
    - iOS15.2 beta
      - 確認中
        - 動作に問題なし
    - 週次報告
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - VASTエラーの調査
    - SDK側の調査では再現できなかった
    - 草開さんにリマインド済み、情報待ち
- アダプタ（加納、外山、木南）
  - MoPub
    - 新しいMoPubSDKがリリースされたら優先して追従対応しリリースする
    - 他のissue対応は余裕ある時にでも出来ればOK
    - iOSの方対応中
      - v7.1.0.0
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
    - iOS側がアップデート来ている
      - 今週どこかでやる予定(木南さん) 
- プラグイン
  - Unity（福岡）
    - 新バージョンがリリースされたら動作検証しておく
    - v4.2.0 リリース準備 レビュー待ち
  - Flutter（加納、外山）
    - iOS側はアップデート完了
    - Android側をアップデート完了
    - リリースに向けたドキュメント整備
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南）
  - コードレビュー
    - 新しく入った業務委託の方のレビューを加納さんが担当
    - 量が多い等でSDKの業務に支障が出そうな場合は随時相談
  - 適宜サポート、アドバイス

## 共有事項
- 2021年度年末調整
  - 年末調整関係書類 提出期限：2021年11月1日（月）18:00まで
  - 未到着分の控除証明書 到着期限：2021年11⽉19⽇（金）必着
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1635124116030500
- 経費精算
  - 11月1日締め日
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1635726836069100
- 10月勤怠締め
  - 11月5日締め日
- 10月分のプロジェクト別計算シート入力
  - 11月5日まで
  - https://docs.google.com/spreadsheets/d/1wUb1ayRsQ704oKfLswhcCXZ_jZCWzNM7ddbXRGZF1mQ/edit#gid=1817599120
- ストレスチェック
  - 11月12日まで
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1635728401070500

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- nendSDK-iOS
  - iOS 15.2 beta検証
    - 影響はなし
  - ナレッジ共有
- レビュー

### 今週の対応予定
- nendSDK-iOS-admob-mediation
  - 検証
- ナレッジ共有
  - nendSDK-iOS
- 各種レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27495
  - 【iOSSDK】広告が表示されない件について
    - 動画インステが表示されない
      - 広告枠が間違っているという回答
- https://pjmanage.adn-mobasia.net/issues/27496
  - 【iOSSDK】Admobメディエーション利用時のバナーサイズ
    - Bannerの調整がうまくいかないという内容
      - adaptive広告にnendが対応していないので対応してませんという回答
        - googleの方にはadaptiveに○がついてた

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - READMEを書く
- nendSDK-iOS-MoPub-CustomEvent
  - リリース準備
- レビュー

### 今週の対応予定
- nendSDK-Flutter
  - READMEを書く
- nendSDK-iOS-MoPub-CustomEvent
  - リリース準備
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 外山
### 先週の進捗
- nendSDK-Android
  - テストの調査、修正
  - 動画広告で誤った広告フォーマットのIDを設定してもロードできてしまう件
    - 対応中
  - access deniedがでる件の調査 
    - 今は保留
- nendSDK-Flutter
  - iOSでいらない定義を削除
### 今週の対応予定
- nendSDK-Android
  - 並列処理時のエラーの原因を見つける
  - テストの調査、修正
  - 動画広告で誤った広告フォーマットのIDを設定してもロードできてしまう件
- 世界遺産ビューア for Android
  - アップデート
- VASTエラーの調査
  - 草開さんからの情報待ち
- レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27491
  - 【AndroidSDK】Android11だけnendインタースティシャルが2回目以降表示されなくなる
    - 原因わからないので実装を相手に見せてとお願い中

### 問題点、課題
- なし

## 船越
### 先週の進捗
- nendSDK-iOS
  - ソースコード閲覧中
- nendSDK-Unity
  - サンプルアプリの動作確認(iOS, Android)
  - 新規プロジェクトに組み込んで確認する
    - 途中まで
- レビュー
### 今週の対応予定
- nendSDK-iOS
  - issueの対応
    - https://github.com/fan-ADN/nendSDK-iOS-source/issues/811
- nendSDK-Unity
  - 新規プロジェクトに組み込んで確認する
    - 続き
- レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 福岡
### 先週の進捗
- 各種レビュー
- VASTエラーの調査
  - 草開さんにリマインド済み
    - 動きなし
- 採用
  - スカウト
    - Androidエンジニア二次面接終了
- nendSDK-Unity
  - SDKのアップデート対応
    - PR作成 レビュー待ち

### 今週の対応予定
- 各種レビュー
- Chrome
  - 新しいバージョンの動作検証
- nendSDK-Unity
  - アップデート対応
  - 今週リリースしたい
- 採用
  - 11/5 カジュアル面談予定（Androidエンジニア）
    - 前日に事前打ち合わせ
  - スカウト継続

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27483
  - 【Android SDK】動画リワード枠でエラーが発生
    - 調査は中断


### 問題点、課題
- なし

## その他
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 福岡
  - 11/02(火) 休み予定
  - 11/12(金) 休み予定

## 次回ファシリテーター（木南->外山->加納->福岡の順番で）
- 福岡さん
