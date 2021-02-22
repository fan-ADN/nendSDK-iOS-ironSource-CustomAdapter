# 2021/02/22 SDKチームMTG議事録
## 参加者
- 木南
- 于
- 外山
- 福岡

## 全体共有事項
- [検証端末リスト](https://fancsdev.qiita.com/shared/items/286d004d351608bd09a3)
  - 端末管理番号の命名規則を`Fan-SDXXX`に変更
  - 手元にある端末のシール記載の命名と異なるかもしれませんが、番号は同じです。
- SDK
  - **以下2つとも最優先でレビューや動作確認をご協力をお願いします**
  - 木南さん対応中のSKA対応
    - リリースを2/25〜2/26に間に合えばベスト
      - 無理しない範囲で。
    - 3/3までにはリリース目標
  - 福岡対応中のMoPubアダプタ対応
    - 2/25〜2/26にはリリース必須な状況
- GERA
  - 今週2/24 GERA説明 + 顔合わせ予定
- 1on1
  - しばらく隔週はやめて月1回でお願いします
  - 3課タスクが立て込んでいるため

## 各自対応の進捗、予定
## 于
### 先週の進捗
- https://github.com/fan-ADN/nendSDK-Unity-admob-mediation-source/issues/1
- https://github.com/fan-ADN/nendSDK-Unity-admob-mediation-source/issues/3
  - 調査中
- https://github.com/fan-ADN/nendSDK-Unity-source/issues/111
  - ビルドエラー調査中
- https://github.com/fan-ADN/nendSDK-iOS-source/issues/675
  - 調査完了？

### 今週の対応予定
- レビュー
- https://github.com/fan-ADN/nendSDK-iOS-source/issues/675
  - 調査結果の内容に応じて、nendで対応した方が良い内容があるかどうかを確認して進める
- https://github.com/fan-ADN/nendSDK-Unity-admob-mediation-source/issues/1
- https://github.com/fan-ADN/nendSDK-Unity-admob-mediation-source/issues/3
  - 調査中
- 上記が完了したら、木南さんから以前依頼のあったタスクも進める
  - https://fancs-dev.slack.com/archives/C0J80E2F8/p1611131705045500
- https://github.com/fan-ADN/nendSDK-Unity-source/issues/111
  - 上記までのタスクを完了してから着手した方がやりやすいのか、並行して出来そうなら進めるでも構いません

### 問い合わせ対応
- なし

### 問題点、課題
- 調査系タスクは調査内容のコメントのみではなく、継続中or完了の報告も必要

## 木南
### 先週の進捗
- SKA2.2対応関連
  - SDK内部を実装
  - 静止画は視聴完了は対応しないことになった
  - 抽選レスポンス実装中
  - 動画のNend2ApiCheckerでテスト配布済み

### 今週の対応予定
- SKA2.2対応関連
  - 抽選レスポンス実装中
  - その他タスク対応
  - iOS14.5とSKA2.2の組み合わせでコールバックが戻らない問題あり
    - iOS14.5beta2に問題ありの可能性あり

### 問い合わせ対応
- なし

### 問題点、課題
- Xcode11切り捨てできるか早めに判断欲しい
  - https://github.com/fan-ADN/nendSDK-request/issues/2

## 加納
### 先週の進捗
- 休み

### 今週の対応予定
- 休み

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 外山
### 先週の進捗
- 1課のタスク完了
- SDKの開発環境準備、学習タスク
- SDKレビュー参加

### 今週の対応予定
- SDKレビュー
- 学習タスク
- GERA説明後、徐々に参加準備
- Androidの問い合わせ絡みで調査依頼あるかも

### 問い合わせ対応
- なし

### 問題点、課題
- なし


## 福岡
### 先週の進捗
- 各種レビュー
- 問い合わせ対応
- 3課wiki整理
- JCenterシャットダウンの影響版の調査
  - gradle pluginのアップデート待ち
- MoPubアダプタ調査

### 今週の対応予定
- 各種レビュー
- 問い合わせ対応
- MoPubアダプタ対応、リリース

### 問い合わせ対応
- https://pjmanage.adn-mobasia.net/issues/27178
- https://pjmanage.adn-mobasia.net/issues/27247

### 問題点、課題
- https://pjmanage.adn-mobasia.net/issues/27085
  - SSPエンジニアとやり取りする予定で調整中

----

## その他
- 木南さん
  - 2/23 休日出勤

## 補足
- なし
