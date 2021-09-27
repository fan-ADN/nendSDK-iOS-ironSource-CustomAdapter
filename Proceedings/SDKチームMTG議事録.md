# 2021/09/27 SDKチームMTG議事録
## 参加者
- 外山
- 加納
- 福岡
- 木南

## 担当状況と直近予定
### SDK
- iOS（木南、加納）
  - 正式版検証
      - iPad関連のユーザーエージェント周りで問題
      - サーバー側が修正完了次第再度検証
  - SKA検証(SKA3.0対応)アプリの改修
    - サーバーサイドの対応方針待ち
  - iOS15周り
    - 週次報告
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - Android 12の検証継続
    - 細かいエラー周りの調査・対応
      - nendSDKの対応は完了
      - 近日中に Android12対応版としてリリース予定
      - GAIDの扱いについてのwiki追記はすぐリリース
    - あと１〜２週ほどで正式リリースされる模様
  - VASTエラーの調査
    - SDK側の調査では再現できなかった
    - 草開さんにリマインド済み、情報待ち
- アダプタ（加納、外山、木南）
  - MoPub
    - 新しいMoPubSDKがリリースされたら優先して追従対応しリリースする
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（福岡）
    - 新バージョンがリリースされたら動作検証しておく
    - AndroidのnendSDKがアップデートされたらアップデートする
  - Flutter（加納、外山）
    - iOS側はアップデート完了
    - Android側をアップデート中
    - リリースに向けたドキュメント整備
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南、福岡）
  - コードレビュー
    - 新しく入った業務委託の方のレビューを加納さんが担当
    - 量が多い等でSDKの業務に支障が出そうな場合は随時相談
  - 適宜サポート、アドバイス

## 共有事項
- #nend-dev-emergencyチャンネルについて
  - https://fancs-dev.slack.com/archives/C0L7YAW3E/p1632275108067600?thread_ts=1632223158.066500&cid=C0L7YAW3E
  - 3課wikiに追記
    - https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Slack-channels#nend
- SDKリリースの周知
  - https://fancs-dev.slack.com/archives/C0L7YAW3E/p1631599424043700
  - iOSとAndroidの下記wikiに追記
    - https://github.com/fan-ADN/nendSDK-iOS-source/wiki#リリース手順
    - https://github.com/fan-ADN/nendSDK-Android-source/wiki/SDKのリリース手順#4リリース周知
- 2022年4月に個人情報保護法が改正
  - https://fancs-dev.slack.com/archives/C0L7YAW3E/p1632448015071200
  - 3課wikiに追記
    - https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge#cookie個人情報関連
- 10/1 17:30~
  - 船越さん顔合わせ予定

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- iOS15正式リリース
  - 関連事項検証/調査
    - iPad周りでバグ
- iOS15.1検証/調査
  - 今のところ問題なし
- iOS12.5.5検証/調査
  - セキュリティ周りのパッチなので動作には問題なし
- レビュー
- 面接準備

### 今週の対応予定
- iOS15 調査＆検証
- ナレッジ共有
  - 共有会の実施
- 各種レビュー

### 問い合わせ対応
- なし

### 問題点、課題
- 新しいiPhone到着
  - 10/7～10/20頃
  - 出社時に整理、iPadを借りる

## 加納
### 先週の進捗
- iOS15検証/調査
- nendSDK-Flutter
  - リリースに向けたドキュメント整備
- レビュー

### 今週の対応予定
- iOS15検証/調査続き
- nendSDK-Flutter
  - ドキュメント整備
- レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27468

### 問題点、課題
- なし

## 外山

### 先週の進捗
- nendSDK-Android
   - Android12周りの修正
    - PiPの修正(PR merge済)
- nendSDK-Flutter
  - InterstitialのAndroid側 (PR出している)

### 今週の対応予定
- nendSDK-Android
  - nendSDKのリリース準備
  - 動画広告で誤った広告フォーマットのIDを設定してもロード成功してしまう
- nendSDK-Flutter
  - Androidの動画リワード実装
- VASTエラーの調査
  - 草開さんからの情報待ち
- レビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27178
- https://pjmanage.adn-mobasia.net/issues/27464

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- VASTエラーの調査
  - 草開さんにリマインド済み
    - 動きなし
- 採用
  - １名内定承諾
    - 入社日 10/1
  - Androidエンジニアと面談
  - 書類選考
  - スカウト継続

### 今週の対応予定
- 新入社員の方の整備
- 各種レビュー
- Chrome
  - 新しいバージョンの動作検証
- 採用(注力)
  - 面談
  - 書類選考


### 問い合わせ対応
- なし

### 問題点、課題
- なし

## その他
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 木南
  - 10月から週1で有給を取る予定
  - 10/11(月) 有給
- 福岡
  - 明日(火)午後通院
  - 今日14時～15時くらいネット周りで離席
- 加納
  - 明日(火)ワクチン接種予定
- 外山
  - なし

----

## 次回ファシリテーター（木南->外山->加納->福岡の順番で）
- 加納さん
