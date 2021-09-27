# はじめに
社内wikiやQiitaTeamなどから、3課の業務で知っておくべき基礎知識や役立ちそうな情報を厳選して記載しています。

## 組織の説明
- [組織図](https://fancsdev.qiita.com/ygoodspeed/items/300080b08342f2d9fb59)
- [サービス開発部行動指針](https://fancsdev.qiita.com/ygoodspeed/items/f22c7cbfe3eb7a6560f4)

## アドテク基礎
- [アドテクノロジー基礎](https://fancsdev.qiita.com/ygoodspeed/items/48637a07078cf8c68027)
- [DSP・SSP・RTBの説明](https://fancsdev.qiita.com/shared/items/086bd2ea3f90bf942c38?ref=relation)
- [CTR・CVR・CPA・CPI・eCPM・CPCなどの説明や計算方法](https://pjmanage.adn-mobasia.net/projects/nend_manual/wiki/基本的な計算方法)
- [アドテク用語](https://blog.katty.in/5143)
- [デジタルマーケティングラボ/Webマーケティング用語集](https://dmlab.jp/words.html)
- [競合サービス情報](https://pjmanage.adn-mobasia.net/projects/nend_manual/wiki/Nend事業部営業推進部wiki#競合サービス情報)

## nend仕様・資料
### 機能説明
- [静止画広告](https://pjmanage.adn-mobasia.net/projects/nend_manual/wiki/静止画（基本機能）)
- [動画広告](https://pjmanage.adn-mobasia.net/projects/nend_manual/wiki/動画（基本機能）)

### Web上の資料
- [メディアパートナー用](https://board.nend.net/dl-mediapartner/)
  - SDKを利用するアプリ向けの資料
- [広告主用](https://board.nend.net/dl-advertiser/)
- [代理店用](https://board.nend.net/dl-agency/)

### API仕様
- https://github.com/fan-ADN/nendSDK-iOS-source/wiki/API仕様
  - Androidも同じ。
- [広告取得API利用説明書（ネイティブ広告）](https://www.nend.net/doc/jpn/adspot_feed_api.html)
  - SDKを利用せず、このAPIを直接実装してネイティブ広告を利用できる機能
  - 一部のweb・アプリのメディアで利用していると思われる
- Redmineにある情報（古いので参考程度に）
  - [Nend配信仕様](https://pjmanage.adn-mobasia.net/projects/developer/wiki/Nend配信仕様)
  - [SDKからの広告抽選API仕様](https://github.com/fan-ADN/nend/wiki/SDKからの広告抽選API仕様)

### SDK仕様
- バナー
  - まとまった情報がないため、困ったら周りに聞く
- [アイコン広告](https://pjmanage.adn-mobasia.net/issues/3097)
- [インタースティシャル広告](https://pjmanage.adn-mobasia.net/issues/5340)
- [ネイティブ広告](https://pjmanage.adn-mobasia.net/issues/9935)
- [フルボード広告](https://pjmanage.adn-mobasia.net/issues/16823)
- [動画広告(リワード、インタースティシャル)](https://pjmanage.adn-mobasia.net/issues/19196)
- [動画ネイティブ広告](https://pjmanage.adn-mobasia.net/issues/24610)

### SDK公開wiki
- [iOS](https://github.com/fan-ADN/nendSDK-iOS/wiki)
- [Android](https://github.com/fan-ADN/nendSDK-Android/wiki)
- [Unity](https://github.com/fan-ADN/nendSDK-Unity/wiki)
- [Cocos2d-x](https://github.com/fan-ADN/nendSDK-cocos2d-x/wiki)
- [AdMob](https://github.com/fan-ADN/nendSDK-admob-mediation/wiki/nendSDK-AdMob-メディエーション-設定ガイド)
- [MoPub iOS](https://github.com/fan-ADN/nendSDK-iOS-MoPub-CustomEvent/wiki)
- [MoPub Android](https://github.com/fan-ADN/nendSDK-Android-MoPub-CustomEvent/wiki)
- [AdobeAir](https://github.com/fan-ADN/nendSDK-AdobeAir-pub-private/releases)
  - [旧バージョン](https://github.com/fan-ADN/nendSDK-AdobeAir/wiki)
- [Flutter](https://github.com/fan-ADN/nendSDK-Flutter/wiki)
- [React Native](https://github.com/fan-ADN/nendSDK-react-native/wiki)

### SDK社内勉強会資料
- https://github.com/fan-ADN/nendSDK-Document-Private/wiki/nendSDK社内向け勉強会資料_beginner
- https://github.com/fan-ADN/nendSDK-Document-Private/wiki/nendSDK社内向け勉強会資料_deep

### SDKプラグイン・アダプタ
- https://github.com/fan-ADN/nendSDK-Document-Private/wiki/Plugins

### cookie(個人情報関連)
- 2022年4月に個人情報保護法が改正される
  - [参考サイト](https://portal.bizrisk.iij.jp/article/16)
  - nendに絡む改正のポイント
    - > cookie(個人関連情報)の取り扱いについて従来通り個人関連情報(≠個人情報)扱いなのは変わりないですが、提供先で個人情報として扱われる場合は利用者に同意を得ることが義務付けられることとなります。
  - nendの結論
    - > nendの場合は、その他情報を紐付けて個人情報として扱う予定はありませんし、第三者への提供も行っておりません。従って、今回の法改正に関する対応は不要であると判断しております。
- 参照スレッド
  - https://fancs-dev.slack.com/archives/C0L7YAW3E/p1632448015071200

## 問い合わせ対応
* [[問い合わせ対応|Knowledge-inquiries]]

## その他お役立ち情報
- [SDKチームのOSS活動について](https://fancsdev.qiita.com/WataruSuzuki/items/515869e5bc4b74c2427f)
- [SceneDelegateのライフサイクルとkeyWindowの遷移を調べてみた](https://fancsdev.qiita.com/t_kinami/items/ea1c77058e9d31bc78b8)
- [iOS13で全画面表示の仕様が勝手に変えられていた](https://fancsdev.qiita.com/t_kinami/items/a36e48a66be166d06872)
- [Androidの学習で参考になりそうなサイト](https://fancsdev.qiita.com/shared/items/1ecbe71b723bd8ffbc70)
- [WWDC基調講演まとめ](https://fancsdev.qiita.com/articles?q=tag%3AWWDC)
- [bitcodeのバージョン](https://fancsdev.qiita.com/t_kinami/items/e87dca8fbd4ad95efb0b)
- [Android ProfilerでAndroidアプリのネットワークの中を調べる方法](https://fancsdev.qiita.com/t_fukuoka/items/72d158b9ff0001cd576d)
- [iOSアプリに携わる人は要チェック](https://fancsdev.qiita.com/t_fukuoka/items/effa4535ea81abc85897)
- [[Open Bidding|Knowledge-OpenBidding]]
