# 2022/02/07 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南(お休み)
- 外山

## 担当状況と直近予定

### SDK

- iOS（木南）
  - iOS15周り
    - iOS 15.4Betaがリリースされた
    - iOS 15.3リリースされた
      - nendSDKの動作に問題ないことを確認
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - 細かいタスクを消化中
- アダプタ（外山、木南）
  - MoPub
    - クローズの対応中
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - Android側 さらに新しいverあり。
    - 他のissue対応は余裕ある時にでも出来ればOK
    - adaptive bannerのドキュメント記載の件はgoogleに確認中
      - 直近タスクが落ち着いたら確認してみる
- プラグイン
  - Unity（福岡）
    - nendSDKのアップデート対応 (iOS, Android)
      - iOSのリリースが完了したら着手する予定
    - 新バージョンがリリースされたら動作検証しておく
    - 今後木南さんや船越さんに担当をシフトしていく予定
      - 引き継ぎ周り対応中
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
      - 近々リポジトリをアーカイブする方針
        - MoPubのカスタムイベントのクローズ(2/14(月))と同時に行う
      - 残っているIssueに関してはPendingとする
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援

- GERA（外山、木南）
  - 適宜サポート、アドバイス
  - `#neobiz_gera_app_developers` について
    - https://fancs-dev.slack.com/archives/C01N3E2ASEP/p1643618772437329
- ハイパーカジュアルゲーム事業
  - 2022/2/21以降始動予定
  - slackチャンネル作成
    - `#fanglobal_publishing_service-development`

## 共有事項
- ハイパーカジュアルの開発について
  - 2/21から始動予定
    - https://fancs-dev.slack.com/archives/C0J08LR7F/p1643788281540819
    - メイン開発担当：船越さん
    - 適宜サポート：3課全員
  - Slackチャンネル
    - `#fanglobal_publishing_service-development`
- iOS16チャンネルについて
  - https://fancs-dev.slack.com/archives/C03083REV8W
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
  - 廃止対応 (Android/iOS)
- nendSDK-Android
  - Kotlin DSLへの置き換え検討

#### 今週の対応予定

- MoPub CustomEvent
  - 廃止対応 (Android/iOS)
- nendSDK-Android
  - Kotlin DSLへの置き換え検討
  - その他細かいissueの消化
- AdMobメディエーションサンプルのバージョンアップ対応続き
  - a8kun-botから更新が来てないような気がする?
- 世界遺産ビューア

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27561
  - wikiの情報が新しいAndroid Studioとは古かったため起きたエラー
  - 解決済
- https://pjmanage.adn-mobasia.net/issues/27560
  - モンストの件の続きでビルドエラー
  - こちらも古いAndroid Studio(AGP)が原因とされている
  - 一旦先方が示した方法で問題ないと回答

#### 問題点、課題

- なし

### 船越

#### 先週の進捗

- nendSDK-iOS-sample
  - SwiftUI 動画ネイティブ作成中
  - SwiftUI フルボード、動画レビュー修正中
  - SwiftUI バナー＆インタースティシャル レビュー待ち
  - レビュー
- MoPub CustomEvent
  - wikiの英語訳作成
- レビュー

#### 今週の対応予定

- SwiftUIを用いたサンプルアプリの作成
  - 動画ネイティブ、ネイティブ作成
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- Unityプラグインアップデート (今週以降)
  - Android側から順に着手
    - 福岡さんの方でレクチャー
  - iOSはアップデート後
- レビュー

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- 各種レビュー
- 採用
  - スカウト継続
- Chromeバージョンアップの確認
- ハイパーカジュアルゲーム開発関連
  - 日程の調整など
  - slackにチャンネル作成
- マネージャ業務周り
  - 会社支給PCのセキュリティ強化の準備
    - 3課だけ別の対応をしてもらう予定(別にPCをもう1台用意してもらう)
    - 新しいOSのアップデートに対応するため

#### 今週の対応予定

- 各種レビュー
- 組織課題
  - PJ準備
- 会社支給PCのセキュリティ強化の準備
- a8-kun-bot(AdMobのアップデート通知bot)の確認
- 検証端末にauthenticationを設定する with toyama
- 採用
  - スカウト継続
- ClickUpアカウント棚卸し

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

## 今後の改善点

- レビュー観点に関して、より詳細な情報を追記したい

## その他

- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 勤怠申請について、Slackで改めてアナウンスする
- 船越
  - 2/8 (火) 19時までに退勤
    - イベント(勉強会)
- 福岡
  - 今週(木)に1on1予定

## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 福岡さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
