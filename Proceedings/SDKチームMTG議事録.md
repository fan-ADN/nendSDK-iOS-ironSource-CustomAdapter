# 2023/03/06 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 馬場
- 国本

--------------------------------------------------------------------------------
## 共有、連絡事項

- 行動評価レポート用シートの共有
  - 各自、次回1on1までに記入をお願いします
  - https://fancs-dev.slack.com/archives/C0J08LR7F/p1677664107445639

- 勤怠締め
  - 毎月1日
  - 月末最終日退勤打刻時に出勤簿申請も行う
  - https://fancs-dev.slack.com/archives/C0J08LR7F/p1677658106383499

- 2023年度の健康診断のご案内
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1677550275688729

- 2023年3月29日（水）に実施予定の当社の株主総会について
  - 【出社時、ネットワーク「root246」の利用一時中止のお願い】
  - 【一時２Ｆ入室禁止のお願い】
  - https://fancs-dev.slack.com/archives/C014J5WSVAA/p1678073400278969
    - CI環境はroot246を使用している可能性があるので、極力動かさないように。

--------------------------------------------------------------------------------

## 各自対応の進捗、予定

## 木南

## 先週の進捗
- nendSDK-iOS
  - v8.0.0 リリース作業 (80%)
    - 配布パッケージ, wiki, サンプルの準備完了
    - 予定していたタスクが終わらなかった要因
      - スケジュール調整ミスの為
        - 作業工程日数は予定通りだったが、リリースまでの日数の認識を誤っていた
  - SKAN4.0確認 (95%)
    - サーバーサイド, SDK共に GERA, 世界遺産ビューアでのポストバックを確認
    - コンソールログに不明なリトライ処理が出続ける現象
    - フィードバックでAppleに問い合わせ中 : 前回のフィードバックに追加質問の形式
- その他
  - サーバーサイドの鮫島さんに検証端末を１台お渡しする予定
    - iPhone12 Pro Max : iOSは最新にアップデートされる予定

## 課題、困っていること、気になっていること
- 世界遺産ビューアをアップデートしたい
  - SKAN4.0からマルチコンバージョンが追加された
  - しかし、インストール後起動時の１回しかコンバージョンを計測していない
  - インストール以外で、パラメーターを変えてコンバージョンを発生させる機能追加を行いたい ← サーバーサイド鮫島さんの希望もあり
  - どういった操作で発生させるべきか、どのタイミングでパラメーターを変更するかなどは要検討
    - 他の方に作業をお願いしたいので、空いている時間でアプリを触ってみる, ソースリーディング をしていただけると助かります

## 今週の予定
- nendSDK-iOS v8.0.0 リリース
  - 3/6 中に完了予定
- 各種プラグインのアップデート
  - アップデート可能なものから随時
  - Unityプラグインは若干改修が必要なため来週予定

## 船越

## 先週の進捗
- nendSDK-iOS
  - wiki 8.0.0対応 レビュー終わり
- Unity-source
  - nendSDK-iOS 8.0.0に向けた対応
    - プラグイン本体への修正
      - [ ] UserFeature削除 iOSのみ対応 (WIP)
- 各種レビュー
- 行動評価入力　済み
- オンボーディング
  - 進捗なし

## 課題、困っていること、気になっていること
- Unity-source
  - 時間を要している。けれどPR上でコメントを貰ったことで進められています。

## 今週の予定
- 1on1
- iOS定例
  - ラベル付け直し
- Unity-source
  - nendSDK-iOS 8.0.0に向けた対応
    - プラグイン本体への修正
      - [ ] UserFeature削除 iOSのみ対応 (WIP)
      - [ ] Interstitial.delegate iOS側
      - [ ] Interstitial.delegate Android側
    - [ ] 8.0.0へのバージョンアップ
- レビュー
  - Android kotlin化
    - 金曜日MTG

## 馬場

## 先週の進捗 (★: 先週予定していたタスク, ☆: 追加で実施or達成できなかったタスク)
- nendSDK-Flutter-Private
  - v1.0.5リリースまで完了　★
- nendSDK-Android-source
  - らくらくスマートフォン(F-42A)でバナー表示可能となった件をWikiに反映　☆
  - Kotlin化のPR1件オープン　★
    - StringUtil(ダウンロードしたファイルをMD5ハッシュ化してる部分)
    - Kotlin解説会の日程調整
  - NendFileUtilのKotlin化　☆
- nendSDK-iOS-source
  - v8.0.0レビュー　☆
- iOSオンボーディング
  - 動画ネイティブ広告レビュー用PR作成　★
  - 動画インステ・動画リワードのレビュー修正　★
  - バナー広告エラー修正　☆
    - Storyboardで出ていたエラーを解消しただけなので、特にレビュー等依頼せずmainへのマージまで進めました
- nend-toiawase
  - Android13でボタンが見切れる件に関するやり取り　☆

## 課題、困っていること、気になっていること
- Kotlin化に関して
  - ConnectorUtilをKotlin化したのですが、ソース公開可能なプラグインを選ぶ部分なので動作確認方法をどうしようか悩んでいます..
    - https://github.com/fan-ADN/nendSDK-Android-source/blob/master/Android-NendSDK/lib-core/src/main/java/net/nend/android/internal/utilities/formats/ConnectorUtil.java

## 今週の予定
- Chromeのチェックツールをセルフホストランナーに移行する
  - 合わせて使い方をWikiに記載する
- Kotlin化2件PRオープン
- Kotlin化の解説会
- オンボーディング
  - 一通りの広告実装完了まで

## 国本

## 先週の進捗
- iOS 16.4 beta2 動作検証
    - nendに影響なし
    - Xcode 14.3 beta2でもビルド出来るようになっている
- nendSDK v8.0.0 リリース関連作業
    - source,sampleのリリース用PR作成や動作確認など
- レビュー
    - Flutter v1.0.5：済
    - Support SKAN4.0：済
    - nendSDK-wiki v8.0.0：済
- Issue対応
    - AdMob
        - 10.1.0 バージョンアップ対応：マージ済み
    - nendSDK-iOS-sourse
        - UItest修正：マージ済み
        - CTCarrierの非推奨：着手中
            - 影響箇所の洗い出しまで完了
- Androidオンボーディング
    - ネイティブ動画：着手中
        - おおよその表示処理は実装完了

## 課題、困っていること、気になっていること
- なし

## 今週の予定
- nendSDK v8.0.0 リリース作業
- レビュー
    - Kotlin化
- Issue対応
    - nendSDK-iOS-sourse
        - CTCarrierの非推奨
            - 今週、対応方針決めて実装着手予定
        - nendSpotIDのcopy属性を外す
            - CTCarrierの非推奨対応終わり次第着手
    - nendSDK-iOS-wiki
        - nendSpotIDのcopy属性を外す
            - CTCarrierの非推奨対応終わり次第着手
- Androidオンボーディング
    - ネイティブ動画
        - 今週、細かいレイアウトの調整やログ出力着手予定
- 上期行動評価の記入

## 福岡

## 先週の進捗

- レビュー済み
  - iOSのSDKv8.0.0関連は全て
  - Androidのらくらくスマホ向けのwiki改修
- 25卒採用PJ
  - インターン生向けの課題内容を3日間、5日間それぞれのパターンで検討中
- オンボーディング準備（現状報告）
  - フェーズ2の課題
    - 準備完了
      - ironSource
    - 準備中
      - admob
    - 未着手
      - Unity、Flutter
  - フェーズ3
    - 各自の課題取り組み、勉強会や講義形式と連動しながら実施予定
    - Android
      - 基礎知識まとめ、課題作成までは完了
      - nend仕様、検証用アプリについてはiOS側の資料をベースに準備予定
      - 実施計画の検討は未着手
    - iOS
      - 基礎知識まとめ途中
      - nend仕様、検証用アプリは準備中
      - 課題作成は未着手(要検討)
      - 実施計画の検討は未着手

## 課題、困っていること、気になっていること
- iOS主軸に業務を最適化しながらチームの体制を作る
  - iOSのオンボーディングに優先的に取り組み、チーム全員がiOSの何らかの業務を遂行できる状態にする
  - Androidと他プラグイン・アダプターのオンボーディングは合間で取り組み、部分的な範囲でも出来るメンバーを増やす

## 今週の予定
- 各種レビュー
- オンボーディング・勉強会の準備
  - フェーズ2準備(admob)
- 組織課題PJ
- 管理職PJ
- 25卒採用PJ

--------------------------------------------------------------------------------

## 今日のMTGで決まったこと、決まらなかったことなど

### 決まったこと

- 2023年3月29日（水）、CI環境はroot246を使用している可能性があるので、極力動かさないように。
  - MTG後に社内マシン確認  

- iOSとnendSDK v8.0.0へのアップデート追従対応に伴い、次期バージョン番号は以下でお願いします。

v8.0.0.0  
https://github.com/fan-ADN/nendSDK-iOS-ironSource-CustomAdapter-private  
https://github.com/fan-ADN/nendSDK-iOS-ironSource-CustomAdapter-wiki  
https://github.com/fan-ADN/nendSDK-iOS-ironSource-CustomAdapter-sample

v5.0.0  
https://github.com/fan-ADN/nendSDK-Unity-source  
https://github.com/fan-ADN/nendSDK-Unity-sample  
https://github.com/fan-ADN/nendSDK-Unity-wiki

v2.0.0  
https://github.com/fan-ADN/nendSDK-Flutter-Private

### 決まってないこと

- 進捗状況の細かいフォーマットについては、MTGを何度か実施して改めて検討していく。

--------------------------------------------------------------------------------

## その他

- 木南さん
  - 3/27~29 お休み
- 馬場さん
  - 3/7 お昼休み 1時間30分くらい頂きます
  - 3/14 端末受け渡しのため出社
- 船越さん
  - 3/24 14:00早退
  - 3/27 or 28 お休み
  - 3/14 端末受け渡しのため出社

## 次回議事録担当（木南->福岡->船越->馬場->国本の順番で）

- 次回は 3/13 (月)
- 木南さん
  - 議事録の運用手順
  - <https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg>
- ファシリテーター
  - 福岡さん