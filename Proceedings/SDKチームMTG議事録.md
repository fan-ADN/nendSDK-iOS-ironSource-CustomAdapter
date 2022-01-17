# 2022/01/17 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 外山

## 担当状況と直近予定

### SDK

- iOS（木南）
  - iOS15周り
    - iOS 15.3betaがリリースされた
    - iOS 15.2.1リリースされた
      - 後ほど詳細に確認する
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - 収集するデータの追記
    - データ洗い出し完了
    - v8.1.0に含めてリリース対応中
- アダプタ（外山、木南）
  - MoPub
    - クローズに伴う影響調査
      - 完了
      - クローズに伴うお知らせの対応を行う (主にサーバサイド)
        - 草開さんに今後の対応方針について連絡中
    - 直近のSDKリリースが落ち着いたら上記確認して進める
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - Android側 最新バージョン対応のPR、レビュー中
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
- 全社MTGの動画視聴
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1642052736110900
- 東証市場区分変更（およびロゴ変更）の件
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1641887314104100
- 2021年下期評価実施
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1641546236096200
  - 今週〜来週1/19,20まででKPT整理、振り返り -> 1/21提出完了
- 新型コロナ感染防止対応の徹底及び感染確認時の対応
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1641878752100500


## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- お問い合わせ対応中心
- レビュー

#### 今週の対応予定

- お問い合わせ対応
- nendSDK-iOS
  - SwiftUIのサンプル反映
- iOSのアップデートの検証
  - iOS 15.3 beta
  - iOS 15.2.1
- XCFrameworkの調査
  - 配布方法の検討
  - 各アーキテクチャの動作確認
- ナレッジ共有
  - nendSDK-iOS関連
- 各種レビュー

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27535
  - LINEマンガのクラッシュの件
  - 疑わしい箇所を改修したSDKをメディアに配布済み
- https://pjmanage.adn-mobasia.net/issues/27541
  - 動画広告のクラッシュの件、デットロック疑い
  - これから調査する段階
- https://pjmanage.adn-mobasia.net/issues/27534

#### 問題点、課題

- なし

### 外山

#### 先週の進捗

- nendSDK-Android
  - admob-mediation-source
    - v20.0.0バージョンアップ対応
      - PRのレビュー修正など
  - v8.1.0リリース準備
- 下期評価周り

#### 今週の対応予定

- 下期評価を優先
- v8.1.0リリース準備
- admob-mediation-source
  - v20.0.0バージョンアップ対応
- 世界遺産ビューアアップデート対応

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

### 船越

#### 先週の進捗

- お問い合わせ対応
- iOSのwiki修正
  - FAQ、プラポリの英語修正
- レビュー

#### 今週の対応予定

- お問い合わせ対応続き
  - 27541
- SwiftUIを用いたサンプルアプリの作成
  - インステ, ネイティブ, 動画ネイティブ
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- レビュー
- 下期評価実施

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27541
- https://pjmanage.adn-mobasia.net/issues/27534

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- 各種レビュー
- 2021年下期評価準備
- 採用
  - スカウト継続

#### 今週の対応予定

- 2021年下期評価実施
- MoPubクローズに伴う調査
  - 草開さんからの返答待ち
- VASTエラーの調査
  - 草開さんからの返答待ち
- 各種レビュー
- MGR教育PJ
- 採用
  - スカウト継続

#### 問い合わせ対応

- なし

#### 問題点、課題

- なし

## その他

- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
- 木南
  - 1/18 (火) 健康診断のため、12時頃から離席

## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 船越さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
