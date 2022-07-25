# 2022/07/25 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 外山
- 馬場
- 国本

--------------------------------------------------------------------------------

## 担当状況と直近予定

### SDK

- iOS（木南、船越、国本）
  - WWDC関連 & iOS16
    - iOS16 beta 3
      - nendSDKへの影響がある変更はなし
  - iOS15周り
    - iOS 15.6正式版リリース
      - 調査実施なし(RC2からビルド番号が変わっていないため)
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
  - SKAN3.0 & 4.0
    - 細かい仕様は継続的にやり取りする
  - 細かいタスクを模索しつつ、Issueで対応中
- Android（外山、馬場、福岡）
  - Android 13 Beta4調査完了
    - nendSDKの影響なし
      - 動作機能等
      - 互換性フレームワーク
  - 細かいタスクを模索&対応中
- AdMobメディエーションアダプター用検証サンプル（外山、木南）
  - 新バージョンがリリースされたら動作検証しておく
    - Android: v21.1.0の検証を実施予定
    - iOS: v9.0.0やその後のバージョンも未確認(現在9.7.0が最新、アダプターは9.3.0まで対応済)
      - プラグイン系リリース後(Flutter?)、合間で進める
  - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（船越、外山）
    - v8.2.0リリースされたので更新予定
      - 一旦様子見。Android13リリース対応後に一緒に対応（あわよくばiOSも一緒に…）
    - 余力があれば新バージョンがリリースされたら動作検証しておく
  - Flutter（外山、木南、馬場）
    - nendSDK Androidの次回リリースまで待ち
      - Unityと同様
    - チームのリソース確保次第、今後を検討する
  - React Native は優先度低め
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - ReactNativeリポジトリのdependapotのPRは適宜マージ
- ironSourceカスタムアダプター対応（外山、木南）
  - https://github.com/fan-ADN/nendSDK-request/issues/9
    - Android
      - リリースPR作成済
        - 今週火曜日くらいまでにレビューを終えておきたい
    - iOS
      - インタースティシャルマージ済
      - wiki側PR作成済
      - サンプル
        - Swift側PRマージ済
        - Objective-C側PRレビュー中
      - 配布パッケージ
        - PodSpec作成中
      - 上記終了後リリース予定
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ開発

- ハイパーカジュアルゲーム事業（開発担当：船越）
  - 第二作目
    - Stack(積み木みたいなゲーム)
    - https://github.com/fan-ADN/app-fanglobal-mock-stack
    - CPI以外の反応が良かったので 広告追加実装完了
      - 管理画面の確認が出来たら今週中にリリース
      - 最終確認待ち
  - 第三作目
    - CubesControl
      - FGにステージ作成依頼中
      - 仕様決め対応完了
  - 第四作目
    - 案はまだきてない(今週予定)

--------------------------------------------------------------------------------

## 共有事項

- Googleドライブの共有ルール
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1658299640659599
- 9con 最終プレゼン大会8/22
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1658278990815959
- GitHubのチーム権限について
  - 各リポジトリのチーム権限をSDK -> dev3rdに変更
  - https://fancsdev.qiita.com/shared/items/c4ee69f4a4acbb3d4e6b#%E3%83%81%E3%83%BC%E3%83%A0

--------------------------------------------------------------------------------

## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- ironSourceカスタムアダプター
  - リワード&インタースティシャル
    - ソースコードの実装まで完了
  - wiki
    - PR出しました
  - サンプル
    - Swift
      - レビュー完了
      - Objective-Cで出た細かい指摘を修正後PRを出す
    - Objective-C
      - レビュー中
- 各種レビュー

#### 今週の対応予定

- ironSourceカスタムアダプター
  - サンプル
    - Objective-C
      - レビュー
    - Swift
      - 細かい修正
  - wiki
    - レビュー
  - 配布パッケージ作成
    - podspecファイルの作成
  - リリース

#### お問い合わせ対応

- なし

#### 問題点、課題

- ironSourceカスタムイベントに向けて計画を周知する
  - 7/28(木)リリース予定

### 外山

#### 先週の進捗

- nendSDK-Android
  - ironSourceカスタムイベント
    - 今月リリース予定です
    - 本体
      - [インステ側の修正](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-private/pull/28)
        - iOS側でのPRで見つかった分
        - マージ済
      - [エラーの管理方法をまとめる](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-private/issues/11)
        - WIP
      - [動画リワードのテスト実装](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-private/pull/32)
        - WIP
      - リリース準備( `v8.2.0.0` )
        - 本体、サンプル、wikiのPR全部あがってます

#### 今週の対応予定

---

**今週木曜日までにリリース目標**

---

- ironSourceカスタムイベントアダプター
  - リリース準備
  - WIPのタスク
- nendSDK-Android
  - 細かいissue(リファクタリング等)がないか考える

#### 問い合わせ対応

- なし

#### 問題点/その他個人的な報告

- とくになし

### 船越

#### 先週の進捗
- 1on1
- HCG
  - Mock-Stack
    - 計測、広告SDK導入、最終確認中
  - Mock-CubesControl
    - ゲーム仕様については開発完了
- 各種レビュー

#### 今週の対応予定
- 1on1
- HCG
  - Mock-Stack
    - リリース
  - Mock-CubesControl
    - 計測SDKの追加、ステージ追加後リリース
  - 第4弾打ち合わせ
- 各種レビュー
- 全社MTG視聴

#### 問い合わせ対応
- なし

#### 問題点、課題
- なし

### 馬場

#### 先週の進捗
- nendSDK
  - Android13対応
    - Beta3→Beta4の差分調査完了
  - コードカバレッジ実装
    - 一旦は設定完了
- 各種レビュー

#### 今週の対応予定
- レビュー(ironSource最優先)
- nendSDK issue探し等
- コードカバレッジの細かい設定完了まで
  - botの移行やWikiの記載、残タスクのissue化
  - 折角頑張って設定したのでQiita書きたい

#### お問い合わせ対応

- なし

#### 問題点、課題

- 5,6分で良いので、CodeCovのカバレッジレポート生成方法について説明させてください

### 国本

#### 先週の進捗
- レビュー
    - nendSDK-iOS-ironSource-CustomAdapter-private
        - Added Interstitial ad adapter. #10：済
    - nendSDK-iOS-ironSource-CustomAdapter-sample
        - Added Swift sample #4：済
        - Added Objective-C sample #5：済
- iOS 15.6 RC2（=正式版） 動作検証
    - 影響なし
- issue対応
    - nendSDK-iOS-source
        - プレイアブル広告再生中にreleaseVideoAdしても広告を閉じない #876：済
        - AVFoundation.frameworkの非推奨パラメータやAPIの対応 #822：着手中

#### 今週の対応予定
- レビュー
    - nendSDK-Android-ironSource-CustomAdapter-wiki,sample,private
    - nendSDK-iOS-ironSource-CustomAdapter-wiki
- issue対応
    - nendSDK-iOS-source
        - iOS 16向け対応 #880
            - AVFoundation.frameworkの非推奨パラメータやAPIの対応
            - [UIKit]UIDevice.orientationの非推奨
            - [WebKit]requiresUserActionForMediaPlaybackの非推奨
            - [CoreTelephony]subscriberCellularProviderの非推奨
- 目標設定面談

#### 問い合わせ対応
- #27634【iOSSDK】XCODEでBuild Failになってしまう
    - シミュレータ用にビルドする際にarm64アーキテクチャが削除されていることが原因。一次回答済み。

#### 問題点、課題
- なし

### 福岡

#### 先週の進捗

- レビュー
  - iOSのironSourceアダプターとサンプル
  - AndroidのSDK本体の細かい修正
- 2022年下期目標設定
  - 1on1実施
  - 個人の目標設定など
- リポジトリ管理
  - 各リポジトリのチーム権限をSDK -> dev3rdに変更

#### 今週の対応予定

- 2022年下期目標設定
  - 目標設定 7/29まで
- 各種レビュー
- HCG開発
- 採用
  - スカウト
- 組織課題PJ
- 管理職向けPJ

#### 問い合わせ対応

- なし

#### 問題点、課題

- iOS領域の体制(一旦保留、上期評価終了後に検討再開したい)
  - iOS領域の体制の安定性を高めて、キャッチアップの促進する必要性あり。

--------------------------------------------------------------------------------

## 今日のMTGで決まったこと、決まらなかったことなど

### 決まったこと

- ironSourceカスタムアダプター 7/28(木) リリース予定
  - (福岡) nendの管理画面に配布ページを作ってもらう必要があるので草開さんにメンションする
- Androidだけで定例やる？
  - やるかも
  - 外山の方で調整

### 決まってないこと

- なし

--------------------------------------------------------------------------------

## その他

- **適宜有給取得**
  - 休暇申請&サイボウズ登録をお願いします
    - できれば休暇前日までにやる
  - サイボウズ登録時はサービス開発部の欄にも登録する
- **勤怠申請について、チーム内や周りにSlackでもアナウンスする**
- 国本さん
  - 7/28 17時早退予定
- 船越さん
  - 8/1 夏期休暇

## 次回ファシリテーター（木南->外山->福岡->船越->馬場->国本の順番で）

- 福岡さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
- タイムキーパー → 馬場さん(次回は船越さん)
- 次回SDKチームMTGは8/1(月)実施
