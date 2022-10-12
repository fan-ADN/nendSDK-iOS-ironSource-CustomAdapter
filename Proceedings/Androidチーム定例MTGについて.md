## 概要

- 毎週 1 回だけ 1 時間程度
  - Android チームは基本的に参加。他の方は参加自由です
  - Google Meet で行います
    - ハドルに比べて双方の画面の共有がしやすい点とノイキャンが優秀という点で採用しています
    - カメラ ON は必須じゃありません
  - 毎週水曜日の 15:00～16:00
    - 休みが少なそうな曜日として選出。全員が集まれない場合は翌日の同時間に変更

## 目的

- Android に関するタスクを確認・詳しく話す機会を設けて、タイムラインの共有や優先度の再検討をする
- Android に関するタスクについて、技術的な問題・話題などについて話す機会を設けて、開発効率や知識を上げる

## 進め方(暫定)

- アジェンダに沿ってざっくばらんに話してみる
- 事前に進捗などの内容の共有などは必要ありませんが、ざっと関連リポジトリのタスクを見ておいてもらえると
- ファシリテーターを回してやるほどでもないかなと思っているので主に毎週外山がやります
- タイムキーパーも一旦なしで(必要そうだったらつけます)

### 2022/10/12 議事録

#### 1. Androidチーム内に関係するタスクの優先度の確認と進捗

- ここでまとまった内容を SDK チームの定例 MTG で共有します
  - 優先度あげてやるべきだと考えるタスクなどもあればここで挙げる(ピン止めされているもの中心)
  - [x] [らくらくスマートフォンについて](https://github.com/fan-ADN/nendSDK-Android-source/issues/672)
    - 検証端末を毎度買い足すのはあまりよろしくない
    - 根本から修正する必要あり
      1. 富士通の開発サポートに聞いてみる
          - 富士通側で検証した結果、修正パッチがなされるとのこと(1～2 ヶ月以内に再度連絡が来る予定)
          - 修正パッチに関しては折り返し連絡が来る予定なのでそれまで待ち
      1. らくらくスマートフォンを全て表示しないようにする
          - 草開さんにらくらくスマートフォンの対応自体をするしないかを決定するために、対応しないとした場合の影響値を確認してもらう
            - 富士通の対応も踏まえて草開さんに判断を委ねる
              - 今後サポートしないことにするのか
                - サーバー側でやる
  - [x] 他にあれば
    - 今後の nendSDK-Android の対応について
      - テストの保守性を上げるための施策を考えて試行する
        - まずは Android 13 対応で見つかったテスト周りのバグを修正するところから始める
          - [x] `Unknown platform error occurred when running the UTP test suite. Please check logs for details` について
            - `lib-core` 内のテストでよく起きる
              - デバイスの問題かも？
                - デバイスを初期化して様子見
          - [x] Code Coverage 動いてなくね？
            - 問題の再現性まで確認
            - 今後引き続き調査する
      - コードを Kotlin に置き換えて全体の可読性を上げる
        - topic issue 作成しました(https://github.com/fan-ADN/nendSDK-Android-source/issues/801)
        - Kotlin 関連で考慮すべき問題が少しずつ出始めている
        - 既に作成済みのモデル周りの issue はすぐにやっても大丈夫
        - Promise 周りをどうするかは今後検討する必要あり
      - ...etc
    - Code Coverage for iOS
      - しばらく保留
        - そもそも UI テストの一部が動かない
          - 消してもいいかも by 木南さん
        - bot の連携(レポート出力など)まで完了している
        - テストが全て pass するまで Codecov からレポートされない

- [x] 手が空いてるときにやったタスクがレビュー待ちなどで滞っているものもあれば挙げる
  - Modify crush in rotating https://github.com/fan-ADN/nendSDK-Android-sample/pull/103
  - App module test https://github.com/fan-ADN/app-WorldHeritageViewer-Android/pull/40 (世界遺産ビューア)
  - Implementation of rewarded video ad https://github.com/fan-ADN/app-WorldHeritageViewer-Android/pull/38 (世界遺産ビューア)

#### 2. 各自の実行中タスクの報告・確認

- [x] 主にやっていた進捗
  - 外山さん
    - 今後のメインタスクの検討・作成
      - Kotlin 周り
    - Kotlin バージョンを 1.5.31 にアップデートする
      - ironSource SDK が Android 13 対応後に Kotlin バージョンが上がっている確認
      - バージョンが上がってなかったので保留
  - 馬場さん
    - nendSDK-Android-source
      - Android 13 周りのタスク
        - [Android13環境で不安定になったテスト環境の改善](https://github.com/fan-ADN/nendSDK-Android-source/issues/797)
          - (済) Danger のエラー
          - Codecov のバグ
      - AdMob メディエーションアダプターの検証
        - v21.1.0, v21.2.0
        - PR レビュー修正中
      - wiki の FAQ 修正
        - PR レビュー修正中
        - リリース日をいつにするか検討する(すぐ？次回リリース後でも問題ないか？)
    - 世界遺産ビューア
      - AdMob リワード実装
        - レビュー修正中
      - data 層テストの追加
        - data 層周りのリファクタリング
          - DI 導入中
          - 引き続きやる
    - Kotlin バージョンを 1.5.31 にアップデートする
      - ironSource SDK が Android 13 対応後に Kotlin バージョンが上がっている確認

- [x] その他(以下は例)
  - 実装レベルで詳しく相談したいこと
  - その他
    - アイデア募集系の issue について、案出しとか調査方針とかを決める
      - [PR作成時に変更箇所のモジュールに対して依存性のアップデートチェックをしたい](https://github.com/fan-ADN/nendSDK-Android-source/issues/750)
    - SDK の動作確認の作業に時間がかかるのを何とかしたい
      - https://github.com/fan-ADN/nendSDK-Document-Private/discussions/50 のやり方に Android 側も則ればいいのではないか
      - 続きは Discussions で行う

#### 3. その他連絡

- 話したいことが割とあるので MTG の時間を 1 時間にします
  - 早く終わればそれでも問題ないので
- 今回の MTG のフィードバック等あれば
  - こういった内容を入れたいなど
