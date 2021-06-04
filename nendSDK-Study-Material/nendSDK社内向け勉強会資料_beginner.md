# nendSDK 社内向け勉強会資料 - 初級編 -
## 目次
- [SDKとは](#about_sdk)
- [nendSDKの仕組み](#nendSDK_structure)
- [JSタグ利用の仕組み](#js_tag_structure)
- [周辺プラットフォーム向けプラグイン](#plugins)
- [メディエーション](#mediation)
- [カスタムイベント](#custom_event)
- [nendSDKのSSP接続先](#ssp)
- [SDK導入の実演](#demonstration)
- [マニュアルやサンプルについて](#about_samples)
- [Q&A](#q&a)
- [過去の勉強会資料](#history)

## <a name ="about_sdk">SDKとは
- `Software Development Kit`の略
- ソフトウェアを開発するためのツール群のこと
- SDKの中身はものによって様々
  - ソースコード、設定ファイル、画像ファイル、他...
  - [iOSのnendSDK](https://github.com/fan-ADN/nendSDK-iOS-pub/releases)
  - [AndroidのnendSDK](https://github.com/fan-ADN/nendSDK-Android-pub/releases)

## <a name ="nendSDK_structure">nendSDKの仕組み
![](https://user-images.githubusercontent.com/9563506/51819831-34e2a780-2317-11e9-90df-79d766bf00d5.png)

### 提供している広告フォーマット
https://user-images.githubusercontent.com/9563506/120431368-5b1b2500-c3b3-11eb-9099-099fde56f6b4.mp4

#### 静止画
- バナー
- アイコン（Androidのみ）
- インタースティシャル
- ネイティブ
- フルボード

#### 動画
- インタースティシャル
- リワード
- ネイティブ

#### インタラクティブ広告
- 動画インタースティシャル
- 動画リワード

#### 備考
QiitaTeam記事の[アドテクノロジー基礎](https://fancsdev.qiita.com/ygoodspeed/items/48637a07078cf8c68027)も参照

### nendSDKの特徴
- アプリ側で広告をいろいろ制御できる
  - 広告のロード、表示、破棄などのタイミングの制御やイベント検知
- 広告取得失敗、在庫切れなどのエラー検知ができる
- 自動更新ができる
  - バナー
  - ネイティブ（静止画）
- Advertising ID（広告識別子）が利用できる
  - 広告識別子とは、端末を特定し、関連性のある広告を配信することができる
  - iOS：Advertising Identifier（IDFA）
  - Android：Advertising ID（AAID、GAID）
- アプリターゲティングが利用できる
  - URLスキームを利用し、特定のアプリをインストールしているユーザーに対してのみ広告を配信する
  - 現在はAndroidのみ利用可能
    - iOSのnendSDKでは、iOS 9未満でURLスキームに制限があるため利用できない
- インタラクティブ広告
  - 見るだけでなく、ユーザー自ら触れられる広告
  - [広告主様向け提案資料](https://board.nend.net/wp-content/uploads/2020/09/nend_Interactive-Guide-for-Advertiser-Jpn.pdf)
  - [用語集](https://github.com/fan-ADN/nend-request/blob/master/specs/issue84/用語集.md)
    - 主にnend開発サイドで使用している用語や参考情報など

#### Advertising ID（広告識別子）について
||名称|ユーザーによるリセット|オプトアウト時の値※|ユーザーによるIDの確認|webブラウザで取得|
|:-:|:-:|:-:|:-:|:-:|:-:|
|iOS|Advertising Identifier（IDFA）|○|すべてゼロ|×|×|
|Android|Advertising ID（AAIDまたはGAID）|○|取得できない|○|×|

※ **オプトアウト時、SDK内部では空文字に置き換えてnendサーバーに送っている**

##### 参考情報
- [広告ID,広告識別子とは](https://www.intage.co.jp/glossary/240/)
- [モバイル端末の広告識別子について知っておくべきこと](https://repro.io/contents/what-you-need-to-know-about-mobile-device-ids/)
- [Appleの広告とプライバシー](https://support.apple.com/ja-jp/HT205223)
- [ASIdentifierManager](https://developer.apple.com/documentation/adsupport/asidentifiermanager?language=objc)
- URLスキーム
  - [iOS](https://developer.apple.com/documentation/xcode/defining-a-custom-url-scheme-for-your-app)
  - [Android](https://developer.android.com/training/app-links?hl=ja)

### iOS14
iOS14でプライバシーポリシーについて大きな変更が発表されました。  
IDFAの使用が制限されるように変更されました。  
[Appのプライバシーに関する詳細情報](https://developer.apple.com/jp/news/?id=hx9s63c5)

#### SKAdNetwork
- IDFAを使わずにアプリのインストールやトラッキングの計測を行うためのフレームワーク
  - AppleのStoreKitと連携しており、Apple独自の計測ロジック
- SKAdNetworkに対応する場合はアプリ側で設定が必要
  - https://github.com/fan-ADN/nendSDK-iOS/wiki/iOS14以降の対応について#skadnetwork-を設定する
- nendSDKでSKAdNetworkに対応した広告が配信される条件
  - SKAdNetwork v2.0
    - iOS14.0以降
    - 静止画広告と動画広告
  - SKAdNetwork v2.2
    - iOS14.5以降
    - 動画広告のみ
- その他参考記事
  - [SKAdNetwork - Appleの広告規格](https://note.com/nendadnetwork/n/n5d81054ddbd8)

#### ATT (App Tracking Transparency)
- アプリのユーザーに対してトラッキングの許諾を求めるための仕組みを提供するフレームワーク
- nendSDKでIDFAを利用して広告を配信したい場合、ATTを利用するためにアプリ側で設定が必要
  - https://github.com/fan-ADN/nendSDK-iOS/wiki/iOS14以降の対応について#app-tracking-transparency-の承認リクエスト
- その他参考記事
  - [ATT (AppTrackingTransparency) について](https://note.com/nendadnetwork/n/nbfd6f08105b4)

## <a name ="js_tag_structure">JSタグ利用の仕組み
![](https://user-images.githubusercontent.com/9563506/51819832-37450180-2317-11e9-8f06-f3ef8da9e26e.png)

### JSタグの特徴
- webブラウザでJavaScriptを利用して広告を表示する仕組み
- アプリでは**WebView**で利用する
- SDKよりも導入が簡単
- 広告取得エラーや在庫切れなどの検知はできない
- 広告の自動更新はできない
- 例
  - アプリ内でJSタグをベタ書き、ローカルに保持などをしている場合
    - JSタグを変更（apiKeyやspotId変更など、アプリ内の実装を変更）したらストアにアップロードし直しが必要

## <a name ="plugins">周辺プラットフォーム向けプラグイン
アプリケーションの機能を拡張したり追加するためのプログラム（ソースコードや設定ファイルなど）のこと。  
nendSDKでは、以下のクロスプラットフォームのアプリ開発環境で利用するためのプラグインを提供している。

<img width="795" src="https://user-images.githubusercontent.com/9563506/51820186-4a0c0600-2318-11e9-99e4-e3a30e86fae2.png">
</br>
<img width="256" src="https://user-images.githubusercontent.com/9563506/120066461-7b946800-c0b1-11eb-8e42-544ef32199c5.png">
</br>
</br>
<img width="256" src="https://user-images.githubusercontent.com/9563506/120066451-71726980-c0b1-11eb-9026-b01935dc625b.png">
</br>

### Unityの特徴
- 世界最大規模のシェアを誇るゲーム開発ツール
- クロスプラットフォーム
  - 同じソースコードから複数のプラットフォームのアプリが作れる
  - iOS、Android、他モバイル、web、PC、ゲーム機などに対応
- 2D、3D、AR、VRのゲーム開発が可能
- 無料で利用可能
  - 年間収益が10万米ドル超は有料版必須
- 開発を支援するサービスやコミュニティが充実
- 開発言語はC#
  - 以前はJavaScript、Booも利用できたが今は使われなくなった

### Cocos2d-xの特徴
- 2D向けのゲーム開発のフレームワーク
  - 3Dも対応しているが2Dの方が得意
- クロスプラットフォーム
- オープンソース
- 商用利用でも無料
- 開発言語はC++
  - 以前はJavaScript、Luaも利用できたが今は使われなくなった
- 利用しているメディアは少ない
  - nendでは現在は積極的に運用やサポートをしていない

### AdobeAIRの特徴
- アドビシステムズが提供しているアプリ開発環境
- クロスプラットフォーム
- 3Dやゲーム開発も可能
- Adobe AIR SDK自体は無料で、他のAdobeの開発ツールなどは有料ライセンス
- 現在のAIR SDKはAdobeではなく[Harman](https://airsdk.harman.com)が提供している
- 開発言語はActionScript
- 利用しているメディアは少ない
  - nendでは現在は積極的に運用やサポートをしていない

### Flutterの特徴
- Googleが提供しているアプリ開発フレームワーク
- クロスプラットフォーム
- オープンソース
- モダンなUIを柔軟に開発しやすい環境や機能が提供されている
- 市場は拡大傾向で、注目度も高くなってきている
- 開発言語はDart
- nendとしては正式リリースはしておらず、実験的にオープンソースでプラグインを公開している
  - nendSDKでは正式リリースを目指してアップデート対応中

### React Nativeの特徴
- Facebookが開発しているアプリ開発フレームワーク
- クロスプラットフォーム
- オープンソース
- React（JavaScriptライブラリ）の開発スキルが活かせる
- シンプルにUIを開発しやすい環境や機能が提供されている
- 開発言語はJavaScript
- nendとしては正式リリースはしておらず、実験的にオープンソースでプラグインを公開している
  - nendSDKでは当面アップデートの予定なし

### nendプラグインの仕組み
アプリはnendプラグインを利用することで、開発ツールや言語が異なる環境でもnendSDKの機能が利用できる。

<img width="796" alt="2019-01-28 16 20 41" src="https://user-images.githubusercontent.com/9563506/51820330-b424ab00-2318-11e9-8b1b-3bdae941c318.png">

### プラグインについての補足
以下のようなwebの技術を利用したアプリ開発ツール（ハイブリットアプリ開発）では、SDKではなく`JSタグ`を利用します。  
そのため、nendSDKのプラグインは提供していません。  
問い合わせがあった場合は、`@alfort（サーバーチーム等）`にご相談下さい。

<img width="792" alt="2019-01-28 16 22 38" src="https://user-images.githubusercontent.com/9563506/51820407-f8b04680-2318-11e9-919a-bf04065821e8.png">

## <a name ="mediation">広告のメディエーションとは
1つのSDKの実装だけで複数アドネットワークの広告をアプリに配信できる機能。  
<img width="817" alt="2019-01-28 16 27 04" src="https://user-images.githubusercontent.com/9563506/51820576-960b7a80-2319-11e9-9be1-0aa39e151a63.png">

### メディエーションなしのイメージ
<img width="877" alt="2019-01-28 16 27 40" src="https://user-images.githubusercontent.com/9563506/51820592-aae80e00-2319-11e9-8bcf-efc28ad48945.png">

### AdMobメディエーションのイメージ
- アプリ側で実装するのは基本的に**AdMob SDK**だけ
- アドネットワークの種類によっては、独自の機能を利用するためにアダプタのAPIを追加で実装する場合もある

<img width="867" alt="2019-01-28 16 28 30" src="https://user-images.githubusercontent.com/9563506/51820633-c9e6a000-2319-11e9-855e-acaeea58d47a.png">

### メディエーションのまとめ
- 複数のアドネットワークの広告を配信できる
- 一般的なメリット
  - 開発コスト（時間、人件費など）が少ない
    - 1つのSDKの実装
  - 在庫切れになりにくい
    - 収益安定
- AdMobメディエーションでnendSDKを利用するメリット
  - 正式連携対応
  - 対応フォーマットが充実
    - バナー
    - インタースティシャル
    - ネイティブ
    - 動画広告
- デメリット
  - 運用するアドネットワークの数が多いと管理や運用のコストもかかる
  - AdMobの仕様やスケジュールに依存する

## <a name ="custom_event">カスタムイベントとは
- メディエーション連携でサポートされていないアドネットワークを利用するための仕組み
- 機能としてはメディエーションと同様
- 現在、nendでカスタムイベントが利用できるのはMoPubのみ

<img width="256" src="https://user-images.githubusercontent.com/9563506/120419649-cc4fdd80-c39d-11eb-8995-7cfb3737d8e5.png">

### MoPubカスタムイベントのイメージ
- アプリ側で実装するのは基本的に**MoPub SDK**だけ
- アドネットワークの種類によっては、独自の機能を利用するためにアダプタのAPIを追加で実装する場合もある

<img width="875" alt="2019-01-28 16 31 52" src="https://user-images.githubusercontent.com/9563506/51820792-40839d80-231a-11e9-869c-51ab3b1d99ef.png">

### カスタムイベントのまとめ
- メディエーション連携でサポートされていないアドネットワークを利用するための機能
- 一般的なメリット
  - 開発コスト（時間、人件費など）が少ない
    - 1つのSDKの実装 + カスタムイベント設定
  - 在庫切れになりにくい
    - 収益安定
- 対応フォーマット
  - バナー
  - インタースティシャル
  - 動画広告
- デメリット
  - 運用するアドネットワークの数が多いと管理や運用のコストもかかる
      - AdMobの仕様やスケジュールに依存する

## <a name ="ssp">nendSDKのSSP接続先
- SSPとは？
  - QiitaTeam記事の[アドテクノロジー基礎](https://fancsdev.qiita.com/ygoodspeed/items/48637a07078cf8c68027)を参照
- SSP事業者側でメディエーション機能を提供している
- 静止画広告（バナー、ネイティブ）はJSタグでメディエーション連携している

|SSP|動画リワード|動画インタースティシャル|動画ネイティブ|
|:-:|:-:|:-:|:-:|
|Ad Generation|○|×|×|
|アドフリくん|○|○|○|
|adstir|○|○|×|
|fluct|○|×|×|
|Geniee|○|×|×|

## <a name ="demonstration">SDK導入実演
iOSを例にして、実際にSDKをアプリに導入する様子を簡単にお見せします。  
https://github.com/fan-ADN/nendSDK-iOS-pub

## <a name ="about_samples">マニュアルやサンプル
GitHubのwikiやFAQやサンプルの記載場所や見方などを説明します。  
https://github.com/fan-ADN

## <a name ="q&a">Q&A

#### SDKを更新したらストアへのアップデートも必要か？
- アプリで利用しているSDKを更新したらストアへのアップデートも必要

#### 新しいSDKがリリースされたらそれに更新する必要があるか？
- 必ずしもSDKのリリース毎に更新する必要はない
- SDKの更新内容を確認してから、更新するか判断
  - 例：利用していない広告フォーマットの修正や機能追加などは更新の必要性は低い

#### メディエーションとカスタムイベントはアダプタの設定みたいなのが必要か？

- どちらの場合もアダプタの利用と管理画面での設定が必要
- admobは正式連携版のアダプタを利用してもらう必要がある
- mopubはnendで配布しているアダプタを利用してもらう必要がある

#### アプリを作りたいデベロッパーさんがいるが、UnityやCocos2d-xなどでどれを使ってもらうのがよいか？

- まずはどんなゲームを作りたいかにもよります
- とくに希望がなければ、チュートリアルや資料などが充実しているUnityをおすすめ
- ツール系ならまずはネイティブでの開発をおすすめ

#### SDKでのエラー検知が具体的にどのようになるのか見たい！

- バナー広告で不正なspotIdを設定して広告ロード失敗時のエラーを実演
- 問い合わせでエラーが出ている場合は、なるべく全部のエラーログをもらってくださいと説明

#### SDKの組み込みのオプション設定にあった位置情報の利用した場合はどのように活用されるのか？

- 位置情報を利用しているアプリでオプションの設定を追加すると、SDK側で位置情報を取得してnendサーバーに送信する
- SDK内部では位置情報を使った制御などは行なっていない

#### これからアプリ開発を始めたい場合はどの言語を覚えるのがよいのか？

- iOSならSwift、AndroidならKotlinでまずはネイティブでの開発方法を覚えることを提案

#### nendSDKを利用するデベロッパーさんから、nendSDKが使いやすいと言われることがあるが、他社と何が違うのか？

- マニュアルが整っていて見やすいから使いやすい印象とのこと

#### バナーとかでたまにインフォメーションボタンが表示されていない案件があるが、これはSDKなのか？

- それらはWeb面やJSタグだと思われるので、営業サイドで確認されるとのこと

#### バナーの広告の自動更新の間隔はメディア側で変更できるのか？
- デフォルトは60秒、管理画面（広告コード/設定）にて変更は可能、詳細は勉強会の応用編で紹介します
  - 補足：アプリの実装時に指定できるのは、接続エラーや広告設定受信エラーなどの場合に広告を再ロードする間隔
  - アイコンも同様

#### 問い合わせ等で、メディアによっては全てのエラーログ情報を送ってもらえない場合もあるが、最低限必要な情報は何がよいか？
- アプリがクラッシュする場合などは、ログ情報が欲しい
- 広告が稀に表示されないなど不確かな条件では、そのケースによって必要な情報も異なるため、繰り返しメディア側とやり取りが必要になる可能性がある

#### アプリの通信内容から利用している広告を調べたりできるか？
- どの程度の精度で調べられるかやってみないと分からない

## <a name ="history">過去の勉強会資料
- [created 2018/09/19 pdf](https://github.com/fan-ADN/nendSDK-Document-Private/files/2801999/nendSDK.ver1.0.0.pdf)
- [created 2019/03/13 gist](https://gist.github.com/fan-t-fukuoka/914157b6d18ef05d2705eeeb8f83ac06)
