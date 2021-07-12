# 2021/07/12 SDKチームMTG議事録
## 参加者
- 外山
- 木南
- 加納
- 福岡

## 担当状況と直近予定
### SDK
- iOS（木南）
  - beta版検証
    - iOS15 public betaリリースされている
  - SKA3.0はプロダクトやサーバーサイドの方針、対応待ち
  - iCloud+のPrivate Relay
    - 検証方法は[wiki](https://github.com/fan-ADN/nendSDK-iOS-source/wiki/Private-Relay)に追記中（木南さん）
    - [検証端末リスト/アカウント、パス](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3#%E3%82%A2%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%83%91%E3%82%B9)
- Android（外山、福岡）
  - v7.1.0 今週中にリリース予定
  - MoPubカスタムイベントの改修を行い同時リリースを行う予定
  - Android 12の検証継続
- アダプタ（加納、外山、木南）
  - MoPub
    - Androidのv7.1.0に追従して今週中にリリース予定
    - 他のissue対応は余裕ある時にでも出来ればOK
  - AdMob
    - 新バージョンがリリースされたら動作検証しておく
    - 他のissue対応は余裕ある時にでも出来ればOK
- プラグイン
  - Unity（福岡）
    - Androidのv7.1.0に追従して来週中にリリース予定
  - Flutter（加納）
    - 全体的なアップデート対応
      - iOSのバナー、インタースティシャルは完了
      - iOSの動画広告を対応中
  - cocos2d-x、AdobeAir、React Native は優先度低め
    - 対応するかプロダクトと相談
    - 問い合わせが来たら確認する程度にしておき、当面は放置
    - dependapotのPRは適宜マージ
- 問い合わせ（全員）
  - 詳細は[3課wikiの問い合わせ対応](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Knowledge-inquiries)を参照

### 新規事業アプリ支援
- GERA（加納、外山、木南、福岡）
  - コードレビュー
  - 適宜サポート、アドバイス
  - 開発タスクへのアサインは当面未定

## 共有事項
- iOS,Android共通
  - プライバシーポリシーの更新を行う (https://fancs-dev.slack.com/archives/C0J80E2F8/p1625805231274100)
    - URLスキームを使った機能を削除してSDKをリリースする
    - スケジュールと改修内容の共有を行う (https://github.com/fan-ADN/nend-request/issues/196)
- 開発３課のwikiについて
  - Firebase Projectsの内容についてまとめている (https://github.com/fan-ADN/nendSDK-Document-Private/wiki/FirebaseProjects)
  - 各自招待メールを送っているので届いていたら承認してほしい
- Androidの検証端末1台が使用不能になった
  - Fan-SD031（Android 8.1）
    - 電源入らない
  - Android 9 の端末も１台デバッグが行えなくなってしまった
- 2021年下期のプロジェクトについてMTG後に説明を行う
- 2021年下期 評価面談について
  - サイボウズに各自予定を入力していく
- 上期評価
  - 7/12-13あたりまでに
    - 個人目標管理シート
      - KPT管理シートをExel形式（.xlsx）で添付
    - 個人行動評価シート
      - KPT管理シートに個人行動評価理由も記入

## 各自対応の進捗、予定

## 木南
### 先週の進捗
- nendSDK-iOS
  - 動画広告でフォーマットが異なる広告枠でロードできてしまう
    - テスト中
- iOS14.7 beta5確認
  - Release Notesを確認したところ大きい変更点はなし
  - 実機での検証は行なっていない
- 上期自己評価
  - KPT記入
- レビュー

### 今週の対応予定
- iOS15 beta検証
- nendSDK-iOS
  - ver7.0.6用改修 (7/26の週にリリースを目処)
    - 動画広告でフォーマットが異なる広告枠でロードできてしまう
    - アプリターゲ関連機能の削除
- ナレッジ共有準備
  - 書き始める
- 優先度は低め
  - XCFramework対応

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 加納
### 先週の進捗
- nendSDK-Flutter
  - 動画インステ広告の実装完了
- 上期自己評価
- レビュー

### 今週の対応予定
- nendSDK-Flutter
  - 動画リワード広告の実装を進める

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山

### 先週の進捗
- MoPubカスタムイベントリリース準備
  - リリースはできる状況

### 今週の対応予定
- 評価の準備
  - KPT整理
- AndroidのnendSDK v7.1.0リリース準備
- MoPubアダプタリリース準備

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- Unityプラグイン
  - リリース準備
    - 位置情報取得をやめる対応
- 上期評価の準備

### 今週の対応予定
- UnityプラグインのAndroidアップデート対応予定
  - AndroidSDKリリース後
- 各種レビュー
- Android12の検証
- 上期評価
- 採用(注力)
  - スカウト

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27400
  - google family policyに関する件 (レーティング)
- https://pjmanage.adn-mobasia.net/issues/27401

### 問題点、課題
- 問い合わせ対応（進展なし、様子見）
  - https://pjmanage.adn-mobasia.net/issues/27263
  - https://pjmanage.adn-mobasia.net/issues/27085
  - https://pjmanage.adn-mobasia.net/issues/27247

----

## その他
- 適宜有給取得
  - 休暇申請&サイボウズ登録をお願いします
  - サイボウズ登録時はサービス開発部の欄にも登録する
  - 福岡さん：7/12 17:30〜離席
  - 木南：8/10 夏季休暇予定

## 補足
- なし
