# 2022/01/11 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 外山

## 担当状況と直近予定

### SDK

- iOS（木南）
  - iOS15周り
    - iOS 15.3
      - beta版等検証あれば
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
- Android（外山、福岡）
  - 収集するデータの追記
    - データ洗い出し完了
    - 草開さんとMTG済み
      - 来年１月ごろにwikiに公開予定
    - 実際のページを草開さんに確認してもらう
  - 他に大きな対応などはなし
- アダプタ（外山、木南）
  - MoPub
    - クローズに伴う影響調査
      - 完了
      - クローズに伴うお知らせの対応を行う (主にサーバサイド)
        - 草開さんに今後の対応方針について連絡中
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
      - Android側 最新バージョンの検証作業中
    - 他のissue対応は余裕ある時にでも出来ればOK
    - adaptive bannerのドキュメント記載の件はgoogleに確認中
- プラグイン
  - Unity（福岡）
    - 新バージョンがリリースされたら動作検証しておく
    - 今後木南さんや船越さんに担当をシフトしていく予定
      - 引き継ぎ周り対応中
  - Flutter（外山、木南）
    - iOSのSDKアップデート対応
      - リリース済
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 現在残っているIssueに関してはPendingとする
    - cocos2d-xは近々リポジトリをアーカイブする方針
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援

- GERA（外山、木南）
  - 適宜サポート、アドバイス

## 共有事項
- ios14-devでの共有
  - https://fancs-dev.slack.com/archives/C016QKKF95E/p1641359799134100
- 開発3課業務マップ
  - 2022年1月作成
  - https://miro.com/app/board/o9J_lKx1F40=/
- 2021年下期評価実施
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1641546236096200
  - 今週〜来週1/19までKPT整理、振り返り
- 新型コロナ感染防止対応の徹底及び感染確認時の対応
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1641878752100500
- 情報セキュリティ委員会事務局
  - 改めて端末等の取扱いに関して注意事項
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1640594163321900

## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- SwiftUI調査
  - バナーの表示周りの調査
  - ネイティブの調査
    - UIViewとの繋ぎ込みが若干困難
    - 少し実装方法を検討する必要がある
  - サンプルに反映して年内くらいにリリースしたい
- nendSDK-Flutter
  - nendSDK_iOSのバージョンを 7.1.0 にアップデート
    - 1.0.1としてリリース
- レビュー
- 面接

#### 今週の対応予定

- お問い合わせ対応
- nendSDK-iOS
  - SwiftUIのサンプル反映
- iOSのアップデートがあれば適宜対応
  - iOS 15.3 beta
- XCFrameworkの調査
  - 配布方法の検討
  - 各アーキテクチャの動作確認
- ナレッジ共有
  - nendSDK-iOS関連
- 各種レビュー

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27535
- https://pjmanage.adn-mobasia.net/issues/27534
- https://pjmanage.adn-mobasia.net/issues/27541
- https://pjmanage.adn-mobasia.net/issues/27540

#### 問題点、課題

- なし

### 外山

#### 先週の進捗

- nendSDK-Android
  - issueへの問い合わせ対応
  - admob-mediation-source
    - v20.0.0バージョンアップ対応
      - PR上げました
- 収集するデータの追記
  - PRが全員にapprove済み
- 世界遺産ビューアアップデート対応
  - ViewModelへ移行中
- お問い合わせ対応

#### 今週の対応予定

- 収集するデータの追記
  - 草開さんにPRを確認してもらう
- admob-mediation-source
  - v20.0.0バージョンアップ対応
    - 以降のバージョンの対応もやる
- 世界遺産ビューアアップデート対応

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27540

#### 問題点、課題

- なし

### 船越

#### 先週の進捗

- お問い合わせ対応
- レビュー

#### 今週の対応予定

- お問い合わせ対応続き
- SwiftUIを用いたサンプルアプリの作成
  - インステ, ネイティブ, 動画ネイティブ
- nendSDK-iOS
  - issue着手(着手するissueは木南さんが洗い出し中)
- nendSDK-iOS-wiki
  - プライバシーポリシーの更新
- レビュー
- nendSDK-Androidの環境構築(時間あれば)

#### 問い合わせ対応

- https://pjmanage.adn-mobasia.net/issues/27534
- https://pjmanage.adn-mobasia.net/issues/27540

#### 問題点、課題

- なし

### 福岡

#### 先週の進捗

- 各種レビュー
- Chromeバージョン確認
  - 問題なし
  - 今後どうするか・・・
- MGR教育PJ
  - 今年も引き続きやる
- 問い合わせ対応
- 採用
  - スカウト継続
  - 書類選考
    - 内1名面接

#### 今週の対応予定

- 下期評価準備
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
- 福岡
  - 1/12 (水) お休み

## 次回ファシリテーター（木南->外山->福岡->船越の順番で）

- 福岡さん
