# nendSDK 社内向け勉強会資料 -Deep編-
この資料は、事前にnend営業サイドからの質問に答える内容として作成しています。

## 目次
- [nendSDKの裏側の出来事](#about_back_side)
- [IDFA / GAIDの取得タイミング](#idfa_gaid)
- [AdMobメディエーションとMoPubカスタムイベントの違い](#difference_mediation_customevent)
- [レスポンスが早い理由は？](#response)

## <a name ="about_back_side">広告の読み込みから表示されるまで間に裏側の出来事</a>
### バナー
![capture_banner](https://user-images.githubusercontent.com/9563506/52703317-7636b080-2fc1-11e9-8f8f-9d80e1dabd46.png)
### インタースティシャル
![capture_interstitial](https://user-images.githubusercontent.com/9563506/52703323-7afb6480-2fc1-11e9-9516-39a05c4f8c03.png)
### 静止画ネイティブ
![capture_native](https://user-images.githubusercontent.com/9563506/52703330-7c2c9180-2fc1-11e9-80c6-a52b34231154.png)
### 静止画ネイティブV2
![native_v2](https://user-images.githubusercontent.com/9563506/52780600-e01c8c00-308d-11e9-8fe3-4df91b8e3bb7.png)
### 動画
![video](https://user-images.githubusercontent.com/9563506/52780647-ffb3b480-308d-11e9-9f45-25b561b01fed.png)

## <a name ="idfa_gaid">IDFA/GAIDの取得タイミング</a>
||広告リクエスト|インフォメーションボタンクリック（オプトアウト）|自動リロード|広告初期化（広告ローダー生成時）|備考|
|:-:|:-:|:-:|:-:|:-:|:-:|
|バナー|◯|◯|◯|-|自動リロードの間隔は抽選リクエストの結果次第でデフォルト60秒|
|アイコン|◯|◯|◯|-|同上|
|インタースティシャル|◯|-|◯|-|自動リロードはデフォルト有効、広告が閉じた直後にリロード開始|
|静止画ネイティブ|◯|◯|◯|-|自動リロードはデフォルト無効、アプリ側で最小30秒〜指定可能|
|フルボード|◯|◯|-|-|-|
|動画|◯|◯|-|-|-|
|動画ネイティブ|◯|◯|-|◯|-|

## <a name ="difference_mediation_customevent">AdMobメディエーションとMoPubカスタムイベントの違い</a>
|名称|正式連携|アダプタ開発|メディアへの提供|レポートAPIキー|
|:-:|:-:|:-:|:-:|:-:|
|AdMobメディエーション|○|nend|AdMob|○|
|MoPubカスタムイベント|×|nend|nend|×|

### 補足
#### カスタムイベントの方が設定手順が若干多い
メディエーションでもカスタムイベントでも、AdMobやMoPubの管理画面で、広告配信時に`nend`を認識してもらうための設定は必要。その際に、カスタムイベントの方が若干設定手順が多くなる。  

ここで、実際にAdMobやMoPubの管理画面に入って設定手順を見てもらう。  
（今後、できれば営業サイドでテスト用アカウントでも用意して確認できる環境を用意してほしい。ということも伝えたい。）

参考）
https://github.com/fan-ADN/nendSDK-iOS-MoPub-CustomEvent/wiki/導入方法


#### 実装の手間はほぼ同じ
ただし、AdMobメディエーションとMoPubカスタムイベントでは、アプリに組み込む`アダプタが異なる`

## <a name ="response">レスポンスが早い（＝レイテンシーがない）のはなぜか？他社SDKとの違いは？</a>
- 他社と比較や調査をしたわけではなく、明確な違いを答えるのは難しい
- 基本的に、端末性能や通信状況などによってレスポンスの速度は異なるもの
