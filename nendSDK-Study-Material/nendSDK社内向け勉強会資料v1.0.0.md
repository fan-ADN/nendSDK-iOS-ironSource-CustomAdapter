# nendSDK 社内向け勉強会資料 v1.0.0
- [created 2018/09/19 pdf]([nendSDK社内向け勉強会資料ver1.0.0.pdf](https://github.com/fan-ADN/nendSDK-Document-Private/files/2801999/nendSDK.ver1.0.0.pdf))

## 目次
- [SDKとは](#about_sdk)
- [nendSDKの仕組み](#nendSDK_structure)
- [JSタグ利用の仕組み](#js_tag_structure)
- [Unity、Cocos2d-xなどのプラグイン](#plugins)
- [メディエーション](#mediation)
- [カスタムイベント](#custom_event)
- [nendSDKのSSP接続先](#ssp)
- [SDK導入の実演](#demonstration)
- [マニュアルやサンプルについて](#about_samples)
- [Q&A](#q&a)

## [SDKとは](#about_sdk)
- `Software Development Kit`の略
- ソフトウェアを開発するためのツール群のこと
- SDKの中身はものによって様々
  - ソースコード、設定ファイル、画像ファイル、他...
  - iOSのnendSDK
    - [nendSDK_iOS.zip](https://github.com/fan-ADN/nendSDK-iOS-pub/releases/download/5.1.0/nendSDK_iOS.zip)
  - AndroidのnendSDK
    - [nendSDK-5.0.1.aar](https://github.com/fan-ADN/nendSDK-Android-pub/releases/download/5.1.0/nendSDK-5.1.0.aar)

## [nendSDKの仕組み](#nendSDK_structure)
![](https://user-images.githubusercontent.com/9563506/51819831-34e2a780-2317-11e9-90df-79d766bf00d5.png)
### nendSDKの特徴
- アプリ側で広告をいろいろ制御できる
  - 広告のロード、表示、破棄などのタイミングの制御やイベント検知
- 広告取得失敗、在庫切れなどのエラー検知ができる
- 自動更新ができる（バナー、静止画ネイティブ）
- Advertising IDが利用できる
  - iOS：IDFA
  - Android：GAID
- アプリターゲティングが利用できる
  - iOS 9未満とAndroidで利用可能
- SDKを更新したらストアへのアップデートも必要
  - 必ずしも新しいSDKのリリース毎に更新してもらう必要はない
  - SDKの更新内容を確認してから、更新するか判断

## [JSタグ利用の仕組み](#js_tag_structure)
![](https://user-images.githubusercontent.com/9563506/51819832-37450180-2317-11e9-8f06-f3ef8da9e26e.png)

### JSタグの特徴
- webブラウザでJavaScriptを利用して広告を表示する仕組み
- アプリではWebViewで利用する
- SDKよりも導入が簡単
- 広告取得エラーや在庫切れなどの検知はできない
- 広告の自動更新はできない
- アプリ内でJSタグをベタ書きやローカルに保持などをしている場合
  - JSタグを変更（apiKeyやspotId変更など）したらストアへアップデートも必要

## [Unity、Cocos2d-xなどのプラグイン](#plugins)
アプリケーションの機能を拡張したり追加するためのプログラム（ソースコードや設定ファイルなど）のこと。  
nendSDKでは、以下3つのマルチプラットフォームのアプリ開発環境で利用するためのプラグインを提供している。

<img width="795" alt="2019-01-28 16 17 48" src="https://user-images.githubusercontent.com/9563506/51820186-4a0c0600-2318-11e9-99e4-e3a30e86fae2.png">

### Unityの特徴
- 世界最大規模のシェアを誇るゲーム開発ツール
- マルチプラットフォーム（クロスプラットフォーム）
  - 同じソースコードから複数のプラットフォームのアプリが作れる
  - iOS、Android、他モバイル、web、PC、ゲーム機などに対応
- 2D、3D、AR、VRのゲーム開発が可能
- 無料で利用可能（年間収益が10万米ドル超は有料版必須）
- 開発を支援するサービスやコミュニティが充実
- 開発にはC#を利用（JavaScript、Booでもできるがもう使われなくなる傾向）

### Cocos2d-xの特徴
- 2D向けのゲーム開発のフレームワーク
  - 3Dも対応しているが2Dの方が得意
- マルチプラットフォーム
  - 同じソースコードから複数のプラットフォームのアプリが作れる
  - iOS、Android、他モバイル、PC などに対応
- オープンソース
- 商用利用でも無料
- 開発にはC++、Lua、JavaScript が利用可能

### AdobeAIRの特徴
- アドビシステムズが提供しているアプリ開発環境
- マルチプラットフォーム
  - 同じソースコードから複数のプラットフォームのアプリが作れる
  - iOS、Android、他モバイル、web、PCなどに対応
- 3Dやゲーム開発も可能
- Adobe AIR SDKは無料。他のAdobeの開発ツールなどは有料ライセンス
- 開発にはActionScriptを利用

### nendプラグインの仕組み
アプリはnendプラグインを利用することで、開発ツールや言語が異なる環境でもnendSDKの機能が利用できる。

<img width="796" alt="2019-01-28 16 20 41" src="https://user-images.githubusercontent.com/9563506/51820330-b424ab00-2318-11e9-8b1b-3bdae941c318.png">

### プラグインについての補足
以下のようなwebの技術を利用したアプリ開発ツール（ハイブリットアプリ開発）では、SDKではなく`JSタグ`を利用します。  
<img width="792" alt="2019-01-28 16 22 38" src="https://user-images.githubusercontent.com/9563506/51820407-f8b04680-2318-11e9-919a-bf04065821e8.png">

そのため、nendSDKのプラグインは提供していませんので、問い合わせがあった場合は、`Alfort（サーバーチーム等）`にご相談下さい。

## [広告のメディエーションとは](#mediation)
複数のアドネットワークの広告をアプリに配信できる機能。  
<img width="817" alt="2019-01-28 16 27 04" src="https://user-images.githubusercontent.com/9563506/51820576-960b7a80-2319-11e9-9be1-0aa39e151a63.png">

### メディエーションなしのイメージ
<img width="877" alt="2019-01-28 16 27 40" src="https://user-images.githubusercontent.com/9563506/51820592-aae80e00-2319-11e9-8bcf-efc28ad48945.png">

### AdMobメディエーションのイメージ
<img width="867" alt="2019-01-28 16 28 30" src="https://user-images.githubusercontent.com/9563506/51820633-c9e6a000-2319-11e9-855e-acaeea58d47a.png">

### メディエーションのまとめ
- 複数のアドネットワークの広告を配信できる機能
- 一般的なメリット
  - 開発コスト（時間、人件費など）が少ない → 1つのSDKの実装
  - 在庫切れになりにくい → 収益安定
- AdMobメディエーションでnendSDKを利用するメリット
  - 正式連携対応
  - 対応フォーマットが充実 : バナー、インタースティシャル、動画広告
- AdMobのスマートバナーには未対応

## [カスタムイベントとは](#custom_event)
メディエーション連携でサポートされていないアドネットワークを利用するための機能。  
現在、nendでカスタムイベントが利用できるのは以下の2つ。

<img width="683" alt="2019-01-28 16 31 12" src="https://user-images.githubusercontent.com/9563506/51820758-29dd4680-231a-11e9-9525-edac2cefc3a1.png">

### MoPubカスタムイベントのイメージ
<img width="875" alt="2019-01-28 16 31 52" src="https://user-images.githubusercontent.com/9563506/51820792-40839d80-231a-11e9-869c-51ab3b1d99ef.png">

### カスタムイベントのまとめ
- メディエーション連携でサポートされていないアドネットワークを利用するための機能
- 一般的なメリット
  - メディエーションと同等の機能が利用可能
  - 開発コスト（時間、人件費など）が少ない → 1つのSDKの実装 + カスタムイベントの設定
  - 在庫切れになりにくい → 収益安定

- MoPubカスタムイベントについて
  - 現在、メディエーション連携していないためカスタムイベント機能を利用している
  - 対応フォーマット : バナー、インタースティシャル、動画広告

- AdMobカスタムイベントについて
  - メディエーションの正式連携版を使ってもらう


## [nendSDKのSSP接続先](#ssp)
これ以外の静止画広告（バナー、ネイティブ）はJSタグでの連携。

|SSP|動画リワード|動画インタースティシャル|動画ネイティブ|
|:-:|:-:|:-:|:-:|
|Ad Generation|○|×|×|
|アドフリくん|○|○|○|
|adstir|○|○|×|
|fluct|○|×|×|
|Geniee|○|×|×|

## [SDK導入実演](#demonstration)
iOSを例にして、実際にSDKをアプリに導入する様子を簡単にお見せします。  
https://github.com/fan-ADN/nendSDK-iOS-pub

## [マニュアルやサンプル](#about_samples)
GitHubのwikiやFAQやサンプルの記載場所や見方などを説明します。  
https://github.com/fan-ADN

## [Q&A](#q&a)

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
