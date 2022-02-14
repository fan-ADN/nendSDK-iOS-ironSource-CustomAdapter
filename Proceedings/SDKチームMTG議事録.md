# 2022/02/14 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南(お休み)
- 外山

## 担当状況と直近予定

### SDK

- iOS（木南、船越）
  - iOS15周り
    - iOS 15.3.1 リリースされた
      - 動作確認中
    - iOS 15.4Betaがリリースされた
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - Android 13 previewがリリースされた
    - まずは情報収集からはじめる
    - 端末購入は今後必要になってから
  - 細かいタスクを消化中
- アダプタ（外山、木南）
  - MoPub
    - クローズの対応中（2/14完了予定）
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - Android側の新しいverを確認中
    - 他のissue対応は余裕ある時にでも出来ればOK
    - adaptive bannerのドキュメント記載の件はgoogleに確認中
      - 直近タスクが落ち着いたら確認してみる
- プラグイン
  - Unity（船越、外山、福岡）
    - nendSDKのアップデート対応 (iOS, Android)
      - AndroidのSDKアップデートから対応中
      - iOSはSDKリリースが完了したら着手予定
    - 新バージョンがリリースされたら動作検証しておく
  - Flutter（外山、木南）
    - nendSDKのアップデート対応 (iOS, Android)
      - iOSのリリースが完了したら着手する予定
    - Flutter,Dartのバージョンアップ対応
      - SDKのアップデートのタイミングで同時に確認する
    - チームのリソース確保次第、今後を検討する
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - ReactNativeリポジトリのdependapotのPRは適宜マージ
    - cocos2d-x
      - 2/14にリポジトリアーカイブ対応済み
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援

- GERA（外山、木南）
  - 適宜サポート、アドバイス
  - `#neobiz_gera_app_developers` について
    - https://fancs-dev.slack.com/archives/C01N3E2ASEP/p1643618772437329
- ハイパーカジュアルゲーム事業
  - 2022/2/21以降始動予定（リスケ中）
  - slackチャンネル作成
    - `#fanglobal_publishing_service-development`

## 共有事項
- フィッシングメール
  - https://fancs-dev.slack.com/archives/C8KF2FALB/p1644468564704729
- 【重要】誓約書（当社サービス会員登録）の提出方法変更について
  - A8.net、nendに会員登録をしている社員やアルバイトが対象の話
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1644303564256579
- ハイパーカジュアルの開発について
  - 2/21開始はちょっと難しい状況のためリスケ相談中
    - https://fancs-dev.slack.com/archives/C031FUPEJTU/p1644382006640349
- 感染拡大対策モード「警戒モードI」（1/24〜）
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1642668276060800



## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- お休み

#### 今週の対応予定

- お休み

#### 問い合わせ対応

- お休み

#### 問題点、課題

- なし

### 外山

#### 先週の進捗

- MoPub CustomEvent
  - 廃止対応の前準備まで完了
- admobメディエーション
  - v20.5.0 対応中
    - 主にAndroid 12をサポートする内容
    - 主にテスト周りの修正になりそう
      - htmlOnPlayingでonClickが呼ばれない事象を調査中
- 世界遺産ビューア
  - 残り3つViewの置き換えくらいの進捗
  - 変更量が多いので一旦masterにマージする
- nendSDK-Android
  - Kotlin DSLへの置き換え検討

#### 今週の対応予定

- MoPub CustomEvent
  - 2/14 廃止対応のリリース、アーカイブ対応実施
- admobメディエーション
  - v20.5.0 対応中
- nendSDK-Android
  - Kotlin DSLへの置き換え検討
  - その他細かいissueの消化
- 世界遺産ビューア

#### 問い合わせ対応
- なし

#### 問題点、課題

- なし

### 船越

#### 先週の進捗

- nendSDK-iOS-sample
  - 木南さんからのコメントに対応
  - SwiftUI 動画ネイティブ作成中
  - SwiftUI フルボード、動画レビュー修正中
  - SwiftUI バナー＆インタースティシャル レビュー待ち
  - 全体的にレビュー待ち
- MoPub CustomEvent
  - wikiの英語訳作成済み
- レビュー
- Unityプラグインアップデート着手

#### 今週の対応予定

- SwiftUIを用いたサンプルアプリの作成
  - 動画ネイティブ、ネイティブ作成
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- Unityプラグインアップデート (今週以降)
  - Android側から順に着手
    - レビュー依頼中
  - iOSはSDKアップデート後予定
  - sourceリポジトリのサンプルアプリも一部改修予定
- iOS 15.3.1 動作確認
- Flutterプラグインアップデート
  - Android側から着手
- レビュ

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- Unityプラグインの引き継ぎ、レクチャー
- 採用
  - 1名 内定調整中
  - スカウト継続
- タスク、スケジュール調整
- マネージャ業務周り
  - 会社支給PCのセキュリティ強化の準備
    - 3課だけ別の対応をしてもらう予定(別にPCをもう1台用意してもらう)
    - 新しいOSのアップデートに対応するため

#### 今週の対応予定

- 各種レビュー
- Chromeバージョンアップの確認
- 組織課題MTG
- 会社支給PCのセキュリティ強化の準備
- 検証端末にauthenticationを設定する with toyama（木南さん待ち）
- 採用
  - スカウト継続
- ClickUpアカウント棚卸し

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

## 今後の改善
- レビュー観点に関して、より詳細な情報を追記したい
  - issue作成しました
  - https://github.com/fan-ADN/nendSDK-Document-Private/issues/47

## その他

- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 勤怠申請について、Slackで改めてアナウンスする
- 余談
  - 今年は祝日が休日を被っていない

## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 船越さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
