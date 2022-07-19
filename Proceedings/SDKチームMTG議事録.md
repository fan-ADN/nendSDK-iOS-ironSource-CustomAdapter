# 2022/07/19 SDKチームMTG議事録

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
    - iOS16関連の対応のissue作成して管理できるようにしておく
      - iOS16向け対応の親issueと開発項目の子issueを作成済み
  - iOS15周り
    - iOS 15.6 RC 2リリース
      - 調査実施予定
    - iOS 14は継続して報告を行う
    - 調査・対応依頼があればそちらも
  - SKAN3.0 & 4.0
    - 細かい仕様は継続的にやり取りする
  - 細かいタスクを模索しつつ、Issueで対応中
- Android（外山、馬場、福岡）
  - Android 13 Beta4調査中
    - 互換性フレームワーク 今日調査終了予定
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
    - v8.2.0リリースされたので更新予定
      - Unityと同様
    - チームのリソース確保次第、今後を検討する
  - React Native は優先度低め
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - ReactNativeリポジトリのdependapotのPRは適宜マージ
- ironSourceカスタムアダプター対応（外山、木南）
  - https://github.com/fan-ADN/nendSDK-request/issues/9
    - Android
      - wiki英語
        - レビュー完了
      - インタースティシャル
        - iOSに仕様を合わせるべき箇所を修正中
        - iOSのレビュー完了後にPR作成
    - iOS
      - インタースティシャルレビュー中
      - wiki・サンプル今週PR作成予定
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ開発

- ハイパーカジュアルゲーム事業（開発担当：船越）
  - 第二作目
    - Stack(積み木みたいなゲーム)
    - https://github.com/fan-ADN/app-fanglobal-mock-stack
    - リリース済み
    - CPI以外の反応が良かったので 広告追加実装完了
      - 管理画面の確認が出来たら今週中にリリース
    - GameAnalytics
      - 実装済み、データ反映の確認予定
  - 第三作目
    - CubesControl
      - FGにステージ作成依頼中
      - 仕様が決まったので対応予定

--------------------------------------------------------------------------------

## 共有事項

- 全社MTG
  - https://fancs-dev.slack.com/archives/C8KF2FALB/p1657600407989459
- 法務相談のSlackチャンネル
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1657695827997209
- Redmineのアカウント発行（審査・法務）
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1657760180414489
- 次回1on1
  - 今週〜来週
  - 初回と目標設定
- 2022年上期評価・下期目標設定
  - 7/19
    - 一次評価の提出期限
  - 7/29
    - 下期目標設定の提出期限

--------------------------------------------------------------------------------

## 各自対応の進捗、予定

### 木南

#### 先週の進捗

- ironSourceカスタムアダプター
  - リワード完了
  - インタースティシャル
    - レビュー中
- 各種レビュー

#### 今週の対応予定

- ironSourceカスタムアダプター
  - インタースティシャル
    - レビュー
  - サンプル
  - wiki
  - 配布パッケージ作成

#### お問い合わせ対応

- なし

#### 問題点、課題

- ironSourceカスタムイベントに向けて計画を周知する
  - 今週中にwiki,サンプルのPR作成
    - サンプル 水曜目標
    - wiki 金曜目標
  - 配布パッケージはインタースティシャルレビュー完了後に合間で実施
  - 7/28リリース予定

### 外山

#### 先週の進捗

- nendSDK-Android
  - ironSourceカスタムイベント
    - 今月リリース予定です
    - 本体
      - [インステ側の修正](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-private/pull/28)
        - iOS側でのPRで見つかった分
      - [エラーの管理方法をまとめる](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-private/issues/11)
    - wiki
      - [英語](https://github.com/fan-ADN/nendSDK-Android-ironSource-CustomAdapter-wiki/pull/3)
        - マージ済
  - 本体
    - 細かいissueの整理
      - [sourceSetsの削除](https://github.com/fan-ADN/nendSDK-Android-source/pull/773)
      - [maven publishing apiの置き換え](https://github.com/fan-ADN/nendSDK-Android-source/pull/774)

#### 今週の対応予定

---

**今月中にリリース目標**

---

- ironSourceカスタムイベントアダプター
  - 残タスク(リリースするまでに最低限必要なもの)
    - [x] リワード動画
    - [x] インステ
    - [x] maven pomとjarファイルの書き出し
    - [x] 難読化の設定
    - [x] サンプルアプリ
      - [x] java
      - [x] kotlin
    - [x] ドキュメント
      - [x] 日本語
      - [x] 英語
    - [ ] 微修正
      - [ ] ユーザー機能の削除
      - [ ] nendSDKとironSource SDKのアップデート
      - [ ] インステの修正
      - [ ] (optional) maven publishing apiの置き換え
  - 7/28リリース予定

- nendSDK-Android
  - 細かいissue(リファクタリング等)がないか考える

#### 問い合わせ対応

- なし

#### 問題点/その他個人的な報告

- とくになし

### 船越

#### 先週の進捗
- 自己評価関連
- HCG
  - Mock-Stack
    - 広告SDK導入(バナー、インステ)
    - 計測SDK 管理画面反映調整

#### 今週の対応予定
- MTG(1on1)
- HCG
  - Mock-Stack
    - 広告、計測SDK最終確認
    - 最終ビルド
  - Mock-CubesControl
    - 仕様反映
    - 計測SDK導入、反映確認
- 各種レビュー

#### お問い合わせ対応
- なし

#### 問題点、課題
- なし

### 馬場

#### 先週の進捗
- nendSDK
  - Android13対応
    - Beta3→Beta4の差分調査
  - コードカバレッジ
    - Jacoco設定中

- 各種レビュー
  - ironsource Android
  - ironsource iOS

- Chromeチェックツール作成して動かし中

- 評価レポート作成・修正と1on1

#### 今週の対応予定
- nendSDK
  - Android13対応
    - 差分調査完了まで
  - Jacoco設定完了まで

- 各種レビュー

#### お問い合わせ対応
- MAX✖️らくスマでクラッシュする件
  - MAXを組み込んだサンプルアプリを作成して動作確認まで完了
    - MAX(Android)の使い方をWikiに書いておきました。

#### 問題点、課題
- Androidの過去のissueの内容を確認したときに「何が問題で、何が期待される修正なのか」がわからないものが多いです(iOS側はどうなのでしょうか)...一旦、内容を整理したいなと考えています
(https://github.com/fan-ADN/nendSDK-Android-source/issues/616　や　https://github.com/fan-ADN/nendSDK-Android-source/issues/576 など)

### 国本

#### 先週の進捗
- iOS 16情報収集
  - 調査完了し、対処が必要なものに関しては別途issue作成を行った
- issue対応
  - nendSDK-iOS-source
    - プレイアブル広告再生中にreleaseVideoAdしても広告を閉じない #876：レビュー依頼中
    - [AdSupport]isAdvertisingTrackingEnabledの非推奨 #881：Close
    - [UIKit]UIDevice.orientationの非推奨 #877：着手中
    - AVFoundation.frameworkの非推奨パラメータやAPIの対応 #882：着手中
- iOS 15.6 RC,iOS 16 beta3 動作検証
  - 影響なし
- 面談

#### 今週の対応予定
- iOS 15.6 RC2 動作検証
- レビュー
  - nendSDK-iOS-ironSource-CustomAdapter-private
    - Added Interstitial ad adapter. #10
- issue対応
  - nendSDK-iOS-source
    - プレイアブル広告再生中にreleaseVideoAdしても広告を閉じない #876
    - [UIKit]UIDevice.orientationの非推奨 #877
    - AVFoundation.frameworkの非推奨パラメータやAPIの対応 #882
    - [WebKit]requiresUserActionForMediaPlaybackの非推奨 #883
    - [CoreTelephony]subscriberCellularProviderの非推奨 #884
  - nendSDK-iOS-sample（優先度低）
    - ナビゲーションバーにSystem Background Colorが適用されていない #123
    - FullBoard - スワイプ形式のViewControllerをPageViewControllerを継承させる #112
- Xcode 14.0で試したいこと（時間空いた時に）
  - SwiftLint，SwiftFormat（静的解析、コードフォーマッター）が簡単に使えるようになったらしいので試す

#### 問い合わせ対応
- なし

#### 問題点、課題
- なし

### 福岡

#### 先週の進捗

- レビュー
  - iOSのironSourceの実装
  - AndroidのSDK本体の細かい修正
- 2022年上期評価
  - 自己評価
  - 1次評価

#### 今週の対応予定

- 2022年上期評価・目標設定
  - 目標設定 7/29まで
- 各種レビュー
- HCG開発
  - 次作開発の支援
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

- ironSourceカスタムアダプター : 7/28リリース予定で作業中の旨を草開さんに伝える
- nendSDK-Android-source の内容が不明瞭なものを確認し、コメント追記 or ラベルを付与する
  - ラベル名 `unknown`

### 決まってないこと

--------------------------------------------------------------------------------

## その他

- **適宜有給取得**
  - 休暇申請&サイボウズ登録をお願いします
    - できれば休暇前日までにやる
  - サイボウズ登録時はサービス開発部の欄にも登録する
- **勤怠申請について、チーム内や周りにSlackでもアナウンスする**
- 外山さん
  - 7/21 通院のため午後(13時〜14時頃)から就業開始予定
- 馬場さん
  - 7/22 出社予定
- 福岡さん
  - 7/22 休み予定
- 船越さん
  - 7/20 16時頃 早退予定

## 次回ファシリテーター（木南->外山->福岡->船越->馬場->国本の順番で）

- 外山さん
  - 定例MTG、議事録の運用手順
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg
- タイムキーパー → 福岡さん
- 次回SDKチームMTGは7/25(月)実施
