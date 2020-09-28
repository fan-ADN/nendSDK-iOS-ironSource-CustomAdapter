# 2020/09/28 SDKチームMTG議事録

# 全体共有事項
- ストレスチェックのアンケート
  - 10月22日まで
- SDK
  - 本日Android11対応のnendSDKv7.0.0リリース（鈴木さん）
  - MoPubや各種プラグイン（Unity、AdobeAir、Cocos2d-x）は順次SDKアップデート対応を進めます
  - MoPubカスタムイベントは対応中
    - iOSは木南さん
    - Androidは福岡
  - AdMobメディエーションのiOSはgoogle側でnendSDKv7.0.0に対応した様子
- GERA
  - 引き続き、加納さんメインで開発参加
    - 再生位置保存の件、TOPのUI改善
- 計画的に有給消化をお願いします
  - 2020年内中

# 各自対応の進捗、予定
## 于
### 先週の進捗
- 休み

### 今週の対応予定
-

### 問題点、課題
- なし

## 木南
### 先週の進捗
- iOSのMoPubカスタムイベントのサンプルのissue対応

### 今週の対応予定
- iOSのMoPubカスタムイベントのサンプルのissue対応
- iOS14対応関連
  - サーバー検証用アプリの作成着手
  - nendをWebViewサンプルの改修
   - canOpenURLの件も。
  - ポストバックの検証や共有も適宜

### 問い合わせ対応
- 27041

### 問題点、課題
- なし

## 鈴木
### 先週の進捗
- Android11のリリース準備
- その他細かいissue対応
  - iOSやGERA、サンプルなどで残っているもの

### 今週の対応予定
- その他細かいissue対応
- AdobeAirプラグイン対応
  - 于さんに調べて頂いたがAndroidXライブラリ絡みで問題が解決できない様子

### 問い合わせ対応
- なし

### 問題点、課題
- なし

## 福岡
### 先週の進捗
- SDKやGERAのレビュー
- MoPubカスタムイベントのAndroidのissue対応

### 今週の対応予定
- MoPubカスタムイベントのAndroidのissue対応
  - nendSDK7.0.0へのアップデート
  - MoPubの新しいSDKへのアップデート（近々リリースされる予想）
  - その他、細かいissue
- 各種SDK、プラグイン、GERAのレビュー

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27039
  - 調査結果はissueに整理済して一旦様子見します
  - https://github.com/fan-ADN/nendSDK-Android-source/issues/641

### 問題点、課題
- なし

## 加納
### 先週の進捗
- GERA
  - v1.3.1をリリース済み
  - 音声再生位置保存対応
    - TOP画面のUI改善対応

### 今週の対応予定
- GERA
  - 音声再生位置保存対応
  - TOP画面のUI改善対応
    - サーバーサイドの準備が出来たら着手予定
- SDKレビューにも徐々に参加

### 問題点、課題
- なし

# その他
- 出社予定
  - なし
- 休み予定
  - 鈴木さん：9/30途中離席
  - 木南さん：今週出社してiPadProと取りに行く
  - 福岡：9/29 18時前に退勤予定

----

# 補足
- 検証端末購入予定
  - iPhone 2台
  - Android 1台（Pixel）
  - その他、中古でAndroid 6系やAndroid GO Editionの安いやつもあれば
