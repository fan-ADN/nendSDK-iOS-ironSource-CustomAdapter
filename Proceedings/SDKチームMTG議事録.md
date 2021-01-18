# 2021/01/18 SDKチームMTG議事録

# 全体共有事項
- 2020年下期評価、2021年上期目標設定
  - 各自、昨年下期KPTの整理をお願いします
  - 今週中に評価の振り返り面談実施
- 全社MTG動画を視聴しておく
- SDK
  - サーバーサイドの検証もOKであれば、iOSのSDK v7.0.4のリリースを行う予定
  - 問い合わせ
    - https://github.com/fan-ADN/nendSDK-iOS-source/issues/739
      - クラッシュが再現が出来ないため、当たりをつけた修正版を渡して様子を見てもらう方針
  - MoPubのアップデート
    - 福岡の方で進める
  - AdMobのアップデート対応
    - 加納さんに依頼をしていたが、次回以降の機会にする
    - 加納さんんはGERAのテスト配布やリファクタリングに専念して頂く
- 共有PCは8階に移動済み
  - 隣には会社全体で使う共有PCがあり
- 検証端末
  - Android6.0のGalaxy端末がバッテリー膨張で使えなくなった

# 各自対応の進捗、予定
## 于
### 先週の進捗
- iOSのregionの調査
  - 調査完了

### 今週の対応予定
- iOS
  - 対応するタスクを木南さんと相談して着手する
- AdMobメディエーションのUnity向けの残っていたタスク
  - https://github.com/fan-ADN/nendSDK-Unity-admob-mediation-source/issues/3

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27195

### 問題点、課題
- なし


## 木南
### 先週の進捗
- iOS14/SKA
  - v7.0.4の対応
  - サーバーサイドの検証用アプリを配布

### 今週の対応予定
- iOS
  - 動画リクエストに地域情報を追加する実装
- サーバーサイドのテストが完了したらv7.0.4のリリース準備
- LINEマンガのクラッシュの件
  - https://github.com/fan-ADN/nendSDK-iOS-source/issues/739
  - 修正版を先方に渡して様子を見てもうようにする
- その他、細かいタスクを于さんと分担して対応予定

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- adobeAirとcocos2d-xのプラグインのリリース方針の確認や調整
- nendサーバーサイド向けの検証用アプリの配布対応
  - AndroidのアプリだけFirebaseから消えていた

### 今週の対応予定
- 各種レビュー
- adobeAirとcocos2d-xのプラグインのリリース方針の確認や調整
- 2020年下期評価

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27197
- https://pjmanage.adn-mobasia.net/issues/27196
- https://pjmanage.adn-mobasia.net/issues/27192

- https://pjmanage.adn-mobasia.net/issues/27085
  - 継続
  - 再現できず、エラーログもないため、調査方法など見直す必要あり

### 問題点、課題
- なし


## 加納
### 先週の進捗
- GERA
  - クラッシュ増加のレビュー
    - Androidのビルドエラーの調査
- 世界遺産ビューア
  - 1.1.2のリリース済み
- SDK
  - 問い合わせ対応

### 今週の対応予定
- GERA
  - クラッシュ増加のレビュー
    - Androidでビルド出来ることを確認し、一旦テスト配布する
  - リファクタリングのレビュー依頼
    -
- 世界遺産ビューア
  - 1.1.2のリリース向け対応
    - PodsでSimulator向けArchitectureの問題でエラーになっている様子
    - CIテストエラーはissueだけ残し、ローカルテストでPassさせるでもOK
- AdMobメディエーションアダプタの互換性チェック
  - 時間取れそうなら進める

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27193

### 問題点、課題
- なし

# その他
- 1/5以降のjinjer打刻期間の打刻修正必要か？
  - 実績に入力が反映されていない、ということで念のため打刻修正しておく

----

# 補足
- なし
