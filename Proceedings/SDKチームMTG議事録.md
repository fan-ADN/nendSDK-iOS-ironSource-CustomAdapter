# 2023/04/03 SDKチームMTG議事録

## 参加者

- 福岡
- 船越
- 木南
- 馬場 
- 国本

--------------------------------------------------------------------------------
## 共有、連絡事項

- 出勤簿申請は月末最後の退勤時に申請することを徹底する
  - https://fancs-dev.slack.com/archives/C0J08LR7F/p1680225535479479
- インターン受け入れに伴う休暇の日程調整のお願い
  - https://fancs-dev.slack.com/archives/C0J08LR7F/p1680234081959409
- ironSourceのアダプターの互換性についての方針検討（4/7までなる早で）
  - https://fancs-dev.slack.com/archives/C01NR0327A5/p1680234175684949
- 【依頼】　2023年運賃改定に伴う、「通勤交通費 変更届」の申請について
  - 期限 4/3まで
  - 3/10 に`employee@fancs.com`宛にメールが `【依頼】　2023年運賃改定に伴う、「通勤交通費 変更届」の申請について` というメールが届いているので各自Agileで申請を行うこと

--------------------------------------------------------------------------------

## 各自対応の進捗、予定

## 木南

## 先週の進捗
- nendSDK-iOS
  - 抽選レスポンス`adm`が3,500文字程度になる件について問題が発生しないか
    - 抽選レスポンスの`adm`をサンプルURLに差し替えて実際の動きを確認
      - 動画広告は事前に`NSURLRequest`で素材をダウンロードする仕組みとなっている
        - ファイルのダウンロードは問題なく行えた
      - MRAIDの場合は`WKWebView`でキャッシュされたファイルを`load`する仕組みとなっている
        - こちらも該当の素材が問題なく再生され、ログ等にエラーメッセージも出力されなかったため問題ないと考える
- ironSourceカスタムアダプター
  - 主にサンプル側の実装に関しての相談

## 課題、困っていること、気になっていること
- 特になし

## 今週の予定
- 一部の広告にてSKANでクリックしてもストア起動が発生しない
  - SDK起因の不具合のため最優先で対応(v8.0.1)
- Unityプラグイン
  - wiki, サンプル
    - v5.0.0 リリース準備
  - nendSDK-iOS v8.0.1と同時にリリースできるように準備を進める
- irouSourceカスタムアダプター
  - dependencyが カスタムアダプターとironSourceSDKで1対1で設定されている問題
    - 互換性の範囲を広げる方針で検討を進める
  - v8.0.1.0 リリースのサポート
    - Podspecファイルを変更するだけなので上の対応を入れても良いかもしれない
  - nendSDK-iOS v8.0.1と同時にリリースできるように準備を進める
- nendSDK-iOS
  - v8.1.0 対応
    - Xcode 14.1 対応
    - i386 アーキテクチャの削除
    - iOS 10 をサポート外とする
      - 草開さんからGOサインをもらう
- オンボーディング資料作成
  - フェーズ３
  - SKAdNetwork
  - framework, XCFramework

## 船越

## 先週の進捗

- Issue
  - Unity-source
    - spotId修正 完
    - interstitial.delegate差替え　完
    - isOutputLog レビュー待ち
    - iOSv8.0.0 接続確認まで
    - Androidv9.0.1接続確認まで
- レビュー
  - ironSource-private 完
  - Unity-wiki　完
  - Flutter 動作確認まで済み
- MTG
  - 輪読会
  - ワイン会
    - 料理等調査
  - サ開定例
- オンボーディング
  - 進捗なし
- お問い合わせ
  - #project_video_dev adm文字数の拡大
    - 仕様の調査、動作確認


## 課題、困っていること、気になっていること

- 特になし

## 今週の予定
- お問い合わせ
  - #project_video_dev adm文字数の拡大
    - 調査結果の報告
    - Nend2ApiChecker更新作業の優先度について確認(高めであれば作業も)
- Unity-source
  - isOutputLog レビュー待ち 
  - iOS v8.0.0動作確認
  - iOS v8.0.1アップデート 
  - Android v9.0.1アップデート (~4/7)
  - プラグインv5.0.0リリース
- 各種レビュー
- MTG
  - 輪読会
  - ワイン会
  - 1on1

## 馬場

## 先週/先々週の進捗 (★: 先週予定していたタスク, ●: 追加で実施したタスク ×: 未達成のタスク)
- nendSDK-Android-source
  - singleTaskモードでクローズのコールバックが呼ばれない場合がある　●
    - レビュー中
- nendSDK-Android-ironSource-CustomAdapter
  - ironSource v7.3.0.1組み込みおよびサンプル実装修正　★
  - バナー広告対応に関する調査　★
  - nendSDK v9.0.1組み込み確認　●
- nendSDK-Flutter-Private
  - Flutter v2.0.0対応　●
    - nendSDK-iOS v8.0.0組み込み
    - nendSDK-Android v9.0.1組み込み
    - UserId, UserFeature削除
  - nendSDK iOS v8.0.1リリース後の作業
  - バナー広告テスト追加　★
    - 各サイズのロード→表示のケースのみ
      - 異常系や準正常系のテストも追加したらPR作成予定
- nendSDK-iOS-Unity-sample, wiki
  - レビュー ★
- iOSオンボーディング
  - 端末によってフルボード広告が見切れる件　★
    - PR作成
  - 動画ネイティブ広告の横向き表示レイアウト変更　★
    - レビュー中

## 課題、困っていること、気になっていること
- サーバーチームから来たURL文字数確認の件は結局船越さんにお願いしてしまって良いのでしょうか...？

## 今週の予定
- nendSDK-Android-source
  - v9.0.1 リリース準備およびリリース作業
- nendSDK-Android-ironSource-CustomAdapter
  - v9.0.1.0 リリース準備
- iOSオンボーディング
  - 動画ネイティブ広告の横向き表示レイアウト変更 PR作成まで
- nendSDK-Flutter-Private
  - Flutter v2.0.0対応　レビュー対応

## 国本

## 先週の進捗
- iOS 16.4 RC, iOS 16.5 beta  動作検証
    - 共にnendへの影響なし
- レビュー
    - Unity関連
- ironSource-Unity v7.2.7対応
    - 3/24(金)リリース済み
- ironSource-iOS v8.0.0.1 対応
    - 主にサンプルアプリの非推奨対応を実施
    - 残りのタスクはprivate, wiki, sample のリリース用PRの作成
    - 予定通り、4/5(水) にリリースできる見込みで進められている
- nendSDK-Flutter v2.0.0対応
    - Issue作成とPR途中まで実施。馬場さんに引き継ぎ
- Androidオンボーディング
    - 動画広告のレビューを出してコメント頂いている状態

## 課題、困っていること、気になっていること
- 端末容量オーバーでiOS 15.7.4 にアップデートできない件は、時間あるときにAppleに問い合わせしようと思っています。

## 今週の予定
- レビュー
    - nendSDK iOS v8.0.1
    - Android関連
    - Unity関連
    - Kotlin化
- ironSource-iOS v8.0.1.0 対応
    - 4/5(水)にリリース予定。↓詳細な予定
    - https://github.com/fan-ADN/nendSDK-iOS-ironSource-CustomAdapter-private/issues/35#issuecomment-1482549734
    - nendSDK iOS v8.0.1リリースと並行してリリースできるよう作業進める
- ironSource-Unity v7.3.0 対応
    - iOS/Androidのアダプターアップデートが完了したら動作検証を実施
- nendSDK-Flutter v2.0.0対応
    - README.mdの修正など
- AdMob v10.2.0対応
    - 追加プロパティ（isMuted）の検証
    - nendアダプター 8.0.0.0 取り込んで動作検証
    - v10.3.0 もリリースされているのでチェック
- Issue対応
    - nendSDK-iOS-sourse
        - CTCarrierの非推奨
        - nendSpotIDのcopy属性を外す
    - nendSDK-iOS-wiki
        - nendSpotIDのcopy属性を外す
- Androidオンボーディング
    - 動画広告のレビュー指摘修正
    - 残りのフォーマットはフルボード広告のみ

## 福岡

## 先週の進捗
- レビュー済み
  - UnityプラグインのisOutputLog削除対応
- レビュー中
  - Androidのコールバックの修正
- 直近のリリース対応のスケジュールを調整
  - https://fancs-dev.slack.com/archives/C0J80E2F8/p1679988787000789
- インタラクティブ広告の調査依頼の要件整理と対応依頼
  - https://fancs-dev.slack.com/archives/C0J80E2F8/p1679971895750259
- 25卒採用PJ
  - インターン課題内容、受け入れ時期などMTGで協議中
- バージョニング運用方針を3課wikiに追記
  - https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Versioning-Policy


## 課題、困っていること、気になっていること
- 本来のオンボーディングの計画通りの順番でフェーズ2（アダプター、プラグインの課題）に取り組むことが難しい
  - オンボーディングよりも先に実業務を分担して対応している状況のため、後追いでも調整するなどして、着実に業務知識やスキル向上に繋がるようにしたい

- 最近のOS関連ニュースのキャッチアップ
  - https://fancs-dev.slack.com/archives/C8ZVCLTJL/p1680025907087369
    - 4/25以降、App Storeに提出するアプリはXcode14.1以降でビルドが必須
    - Swift5.8リリース
    - 他はこういうサイトからも情報を入手できる https://ios-osushi.github.io/posts/051-20230403/ 

## 今週の予定
- ironSourceアダプターの運用方針について検討する（今週中）
  - https://fancs-dev.slack.com/archives/C01NR0327A5/p1680234175684949
  - 今週中なる早で天川さんに見解をまとめて連絡する
- Android14検証端末購入
- 各種レビュー
- オンボーディング・勉強会の準備
  - フェーズ2準備(admob、Unity)
- 組織課題PJ
- 管理職PJ
- 25卒採用PJ

--------------------------------------------------------------------------------

## 今日のMTGで決まったこと、決まらなかったことなど

### 決まったこと
- nendSDK-iOS v8.0.1について
  - レビュアーにアサインされた場合は最優先で確認する。
    - SKAN動作確認のアサイン予定 → 国本さん・船越さん
    - リリース時の確認は全員
  - 影響を受けるironSource(iOS), UnityはnendSDKのリリースと並行してリリース作業を進められるように準備を進める。Flutterの作業優先度はironSource(iOS), Unityよりも下。
- ironSourceカスタムアダプター(iOS)
  - 草開さん・天川さんに伝えていたリリース予定日が後ろにずれる
      - リリース遅延に関してはお二人にも連絡する(国本さん)

### 決まってないこと
- 特になし

--------------------------------------------------------------------------------

## その他
- 馬場
  - 4/6(木) 午後から勤務予定

## 次回議事録担当（木南->福岡->船越->馬場->国本の順番で）

- 次回は 4/10 (月)
- 国本さん
  - 議事録の運用手順
  - <https://github.com/fan-ADN/nendSDK-Document-Private/wiki#定例mtg>
- ファシリテーター
  - 福岡