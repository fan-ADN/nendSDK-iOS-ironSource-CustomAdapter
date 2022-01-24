# 2022/01/24 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 外山

## 担当状況と直近予定

### SDK

- iOS（木南）
  - iOS15周り
    - iOS 15.3RCがリリースされた
    - iOS 15.2.1リリースされた
      - 後ほど詳細に確認する
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - 収集するデータの追記
    - wiki更新済
  - v8.1.0に含めてリリース対応中（レビュー依頼中）
- アダプタ（外山、木南）
  - MoPub
    - クローズに伴う影響調査
      - 完了
      - クローズに伴うお知らせの対応を行う (主にサーバサイド)
        - 草開さんに今後の対応方針について連絡中
    - 直近のSDKリリースが落ち着いたら上記確認して進める
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - Android側 マージ済。テストまだ。さらに新しいverあり。
    - 他のissue対応は余裕ある時にでも出来ればOK
    - adaptive bannerのドキュメント記載の件はgoogleに確認中
      - 直近タスクが落ち着いたら確認してみる
- プラグイン
  - Unity（福岡）
    - 新バージョンがリリースされたら動作検証しておく
    - 今後木南さんや船越さんに担当をシフトしていく予定
      - 引き継ぎ周り対応中
  - Flutter（外山、木南）
    - iOSのSDKアップデート対応
      - リリース済
    - チームのリソース確保次第、今後を検討する
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - ReactNativeリポジトリのdependapotのPRは適宜マージ
    - cocos2d-x
      - 近々リポジトリをアーカイブする方針
      - 残っているIssueに関してはPendingとする
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援

- GERA（外山、木南）
  - 適宜サポート、アドバイス

## 共有事項
- 2月01日（火）懇親会
  - フードサービス入力1/28 17:00まで
  - https://fancs-dev.slack.com/archives/C2GCVN198/p1642667838009000
- 感染拡大対策モード強化（1/24〜）
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1642668276060800
- 最近、メールの誤送信に関する問い合わせが増えております。
  - FANCOMIではGmailでの情報漏洩防止対策として「Active!gate SS」を導入しております。
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1642393457016200
- 開発部購入PCと検証端末の一覧管理がGoogleDriveに移行しました（共有ドライブにも招待する）
  - https://fancsdev.qiita.com/shared/items/aa6077ab10fdea09815a
  - https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3


## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- お問い合わせ対応中心
- 2021下期評価
- レビュー

#### 今週の対応予定

- iOS エンジニア面接
- お問い合わせ対応　#27541
  - レビュー依頼予定 
- nendSDK-iOS
  - SwiftUIのサンプル反映
- iOSのアップデートの検証
  - iOS 15.3 RC
  - iOS 15.2.1
- XCFrameworkの調査
  - 配布方法の検討
  - 各アーキテクチャの動作確認
- ナレッジ共有
  - nendSDK-iOS関連
- 各種レビュー

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27541
  - 動画広告のクラッシュの件、デットロック疑い
  - 再現確認、改修中
- https://pjmanage.adn-mobasia.net/issues/27534
  - WebView改修　草開さんと確認済　OK

#### 問題点、課題

- なし

### 外山

#### 先週の進捗

- nendSDK-Android
  - admob-mediation-source
    - v20.0.0バージョンアップ対応
      - PRのレビュー修正、テスト修正中
  - v8.1.0リリース準備
    - wikiレビュー修正
  - データセーフティwikiリリース作業
- 下期評価周り
- 世界遺産ビューアアップデート対応

#### 今週の対応予定

- v8.1.0リリース準備
- admob-mediation-source
  - v20.0.0テスト修正対応
- 世界遺産ビューアアップデート対応
- nendSDK-Android 優先度低いissue対応

#### 問い合わせ対応

- データセーフティ #27515

#### 問題点、課題

- なし

### 船越

#### 先週の進捗

- お問い合わせ対応（【iOS SDK】動画枠でクラッシュが発生#27541
  - サンプルプロジェクト作成、再現、改修、テスト
- KPT入力
- iOSのwiki修正
- レビュー

#### 今週の対応予定

- お問い合わせ対応（【iOS SDK】動画枠でクラッシュが発生#27541
  - テスト、修正版SDK提供
- お問い合わせ対応（【iOSSDK】SDK修正の対応可否について#27534 WebView)
- SwiftUIを用いたサンプルアプリの作成
  - インステ, ネイティブ, 動画ネイティブ
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- レビュー
- iOSアップデートの確認作業

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27541
- https://pjmanage.adn-mobasia.net/issues/27534

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- 各種レビュー
- 2021年下期評価実施
- 採用
  - スカウト継続

#### 今週の対応予定

- 2021年下期評価フィードバック
- MoPubクローズに伴う調査
  - 草開さんからの返答待ち
- VASTエラーの調査
  - 草開さんからの返答待ち
- 各種レビュー
- MGR教育PJ
- 採用
  - スカウト継続、面接
- iOS16準備

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

## その他

- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 外山
  - 1/24(月) 本社作業後、帰宅
  - 2/2(水) 通院 11時離席、15時再開予定

## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 木南さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
