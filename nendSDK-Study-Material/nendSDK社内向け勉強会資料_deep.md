# nendSDK 社内向け勉強会資料 -Deep編-
この資料は、事前にnend営業サイドからの質問に答える内容として作成しています。

## 目次
- [nendSDKの裏側の出来事](#about_back_side)
- [IDFA / GAIDの取得タイミング](#idfa_gaid)
- [AdMobメデェーションとカスタムイベントの違い](#difference_mediation_customevent)
- [レスポンスが早い理由は？](#response)

## <a name ="about_back_side">広告の読み込みから表示されるまで間に裏側の出来事
### バナー
![capture_banner](https://user-images.githubusercontent.com/9563506/52703317-7636b080-2fc1-11e9-8f8f-9d80e1dabd46.png)
### インタースティシャル
![capture_interstitial](https://user-images.githubusercontent.com/9563506/52703323-7afb6480-2fc1-11e9-9516-39a05c4f8c03.png)
### 静止画ネイティブ
![capture_native](https://user-images.githubusercontent.com/9563506/52703330-7c2c9180-2fc1-11e9-80c6-a52b34231154.png)
### 静止画ネイティブV2
![capture_native2](https://user-images.githubusercontent.com/9563506/52703334-7d5dbe80-2fc1-11e9-8ee5-a0cf1bc0f7df.png)
### 動画
![capture_video](https://user-images.githubusercontent.com/9563506/52703339-7f278200-2fc1-11e9-866d-f50db95baa4e.png)


## <a name ="idfa_gaid">IDFA/GAIDの取得タイミング
||広告リクエスト|インフォメーションボタンクリック（オプトアウト）|自動リロード|広告初期化（広告ローダー生成時）|備考|
|:-:|:-:|:-:|:-:|:-:|:-:|
|バナー|◯|◯|◯|-|自動リロードの間隔は抽選リクエストの結果次第でデフォルト60秒|
|アイコン|◯|◯|◯|-|同上|
|インタースティシャル|◯|-|◯|-|自動リロードはデフォルト有効、広告が閉じた直後にリロード開始|
|静止画ネイティブ|◯|◯|◯|-|自動リロードはデフォルト無効、アプリ側で最小30秒〜指定可能|
|フルボード|◯|◯|-|-|-|
|動画|◯|◯|-|-|-|
|動画ネイティブ|◯|◯|-|◯|-|

## <a name ="difference_mediation_customevent">AdMobとの正式連携しているメディエーションとカスタムイベントの違い
### カスタムイベントの方が設定手順が若干多い
メディエーションでもカスタムイベントでも、AdMobやMoPubの管理画面で、広告配信時に`nend`を認識してもらうための設定は必要。  
その際に、カスタムイベントの方が若干設定手順が多くなる。  

ここで、実際にAdMobやMoPubの管理画面に入って設定手順を見てもらう。  
（今後、できれば営業サイドでテスト用アカウントでも用意して確認できる環境を用意してほしい。ということも伝えたい。）

参考）
https://github.com/fan-ADN/nendSDK-iOS-MoPub-CustomEvent/wiki/導入方法


### レポートAPIキーの利用可否
- 正式連携のメディエーションならレポートAPIキーを追加して広告配信を最適化できる
- カスタムイベントでは設定できない

https://support.google.com/admob/answer/7374110


### 実装の手間はほぼ同じ
- 正式連携のメディエーションとカスタムイベントでは、アプリに組み込む`アダプタが異なる`
  - AdMobのメディエーション用アダプタはAdMobが提供している
    - https://developers.google.com/admob/android/mediation/nend
  - カスタムイベント用アダプタはnendが提供している
    - https://github.com/fan-ADN/nendSDK-iOS-MoPub-CustomEvent/wiki/nendSDK-iOS-MoPubカスタムイベント-設定ガイド
    - https://github.com/fan-ADN/nendSDK-Android-MoPub-CustomEvent/wiki/nendSDK-Android-MoPubカスタムイベント-設定ガイド


## <a name ="response">レスポンスが早い（＝レイテンシーがない）のはなぜか？他社SDKとの違いは？
- 他社と比較や調査をしたわけではなく、明確な違いを答えるのは難しい
- 基本的に、端末性能や通信状況などによってレスポンスの速度は異なるもの
