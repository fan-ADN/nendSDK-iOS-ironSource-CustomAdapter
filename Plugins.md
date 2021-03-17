## 各種プラグイン・アダプタ

### AdMob
- メディエーションに対応
- 対応プラットフォーム
  - iOS、Android、Unity
  - 基本的にAdMobに準拠
- 多くのアプリメディアやデベロッパーは、安定した広告収益のための選択肢としてメディエーションを利用している
- AdMobは幅広いプラットフォームにも対応しており、需要も多い
- アドネットワークの競合でもあり、メディエーションやOpen Biddingなどの連携で公式パートナーでもある
- GitHubのやり取りで反応がなかったり返事が遅い場合もある
- 必要に応じてnendプロダクト経由でGoogleの担当者とやり取りも可能
- 優先度高めで、nendのプロダクトや営業から対応依頼が来るパターンが多い
- アダプタはオープンソースで公開されている
  - https://github.com/googleads/googleads-mobile-ios-mediation
  - https://github.com/googleads/googleads-mobile-android-mediation
- 基本的にアダプタのアップデートやリリースなどはAdMobエンジニア側が対応している
  - ただし、nendSDK側の不具合などでアダプタの修正が必要な場合は、我々からプルリクするスタンス
  - アダプタに問題点を見つけた場合は、上記リポジトリでissue作成や我々で修正したものをプルリクする
- プルリク出す場合は、GoogleのCLA(Contributor License Agreement)に署名して認証してもらう必要がある
  - コミットやプルリクはファンコミでCLAのグループに所属しているメールアドレスを使う(`@fancs.com`)
  - [詳細はこちらを参照](https://github.com/fan-ADN/nendSDK-Document-Private/wiki/AccountInfo-dev#googleグループcla)
- UnityでAdMobメディエーションを利用する場合は、[nendSDKのUnity向けプラグイン](https://github.com/fan-ADN/nendSDK-Unity-pub)ではなく、[AdMobが提供しているUnity向けプラグイン](https://developers.google.com/admob/unity/quick-start)を利用する
  - 混同しやすいので注意。この間違い絡みの問い合わせも過去に何度かあった。

### MoPub
- カスタムイベントに対応
  - nendは公式なメディエーションネットワークとして連携していない
  - `カスタムイベント`に対応することでメディエーションで配信可能
    - 詳細は https://developers.mopub.com/publishers/mediation/mopub-network-mediation/ の`Unsupported Networks`を参照
- 対応プラットフォーム
  - iOS
  - Android
  - Unityにも対応出来ると尚良いが未着手
- AdMob同様に需要も多く、継続して対応プラグインを開発・運用・保守していく
- 優先度高めで対応依頼が来るパターンが多い
- MoPubのSDKとアダプタはオープンソースで公開されている
  - https://github.com/mopub/mopub-ios-sdk
  - https://github.com/mopub/mopub-ios-mediation
  - nendのアダプタは、これらのリポジトリやドキュメントを参考にして開発している

### Unity
- プラグインを提供
- 対応プラットフォーム
  - iOS
  - Android
- 需要は多いので、継続して対応プラグインを開発・運用・保守していく
- Unityのリリースやアップデート頻度は多い
  - 関連情報のキャッチアップも重要&必須
  - Slackの`team_sdk_feed`チャンネルに`Unity Blog`のRSSから記事を取得している
- 優先度高めで対応依頼が来るパターンが多い
- 動画ネイティブ広告のプラグイン開発では技術的な問題がありペンディング

### AdobAir
- プラグインを提供
- 対応プラットフォーム
  - iOS
  - Android
- 現在プラグインを利用しているメディアは1社のみ
  - グローバルギア
  - 渡したプラグインの管理リポジトリ
    - https://github.com/fan-ADN/nendSDK-AdobeAir-pub-private/releases
- 当面は一般に公開する予定なし
- 他にプラグイン利用を希望するメディアが現れたら営業経由で相談が来るかもしれない

### cocoa2d-x
- モジュールを提供
  - cocos2d-x（C++）とnendSDK(iOS・Android)を連携するためのソースコードをモジュールとして配布している
- 対応プラットフォーム
  - iOS
  - Android
- 利用しているメディアは複数あるが売り上げインパクトは小さい
- 今後も開発コストをかけ続けるか？判断しても良さそうな時期
- クローズ提供するか(一般公開をやめて要望があるメディアのみ提供とか)、サポート終了を検討予定
  - 現在プロダクト・営業サイドに確認中
  - その方針が決まって動くまでは従来通りの提供をしていく
- 開発やサポートを終了する場合は、ソースコードをオープンソースで公開するのもあり
  - https://github.com/fan-ADN/nendSDK-Titanium と同様にするとか

### Flutter
- プラグインを提供
  - [dart package](https://pub.dev/packages/nend_plugin#-readme-tab-)
- 対応プラットフォーム
  - iOS
  - Android
- プラグインの正式リリースはしておらず、実験的にオープンソースで公開している
  - 需要や周りの反応の見ている
- 需要はありそうなので、開発体制を整え次第、正式リリースに着手するのが良さそう

### React Native
- プラグインを提供
  - [npm package](https://www.npmjs.com/package/react-native-nend-bridger)
- その他はFlutterと同様
