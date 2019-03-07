# nendSDK 社内向け勉強会資料 -Deep編-
この資料は、事前にnend営業サイドからの質問に答える内容として作成しています。

## 目次
- [nendSDKの裏側の出来事](#about_back_side)
- [IDFA / GAIDの取得タイミング](#idfa_gaid)
- [AdMobメディエーションとMoPubカスタムイベントの違い](#difference_mediation_customevent)
- [レスポンスが早い理由は？](#response)

## <a name ="about_back_side">広告の読み込みから表示されるまでの裏側の出来事</a>
### バナー
![capture_banner](https://user-images.githubusercontent.com/9563506/53944391-9b22cd00-4102-11e9-9840-769a58c5bdcc.png)
### インタースティシャル
![capture_interstitial](https://user-images.githubusercontent.com/9563506/53944392-9c53fa00-4102-11e9-9520-6af75e2d01c5.png)
### 静止画ネイティブ
![capture_native](https://user-images.githubusercontent.com/9563506/53944388-99590980-4102-11e9-9afc-4a186ecfb029.png)
### 静止画ネイティブV2
![native_v2](https://user-images.githubusercontent.com/9563506/53944379-96f6af80-4102-11e9-940c-908d2758513c.png)
### 動画
![video](https://user-images.githubusercontent.com/9563506/53944372-94945580-4102-11e9-9a31-ea2ae268fde6.png)

## <a name ="idfa_gaid">IDFA/GAIDの取得タイミング</a>
||広告初期化|広告リクエスト|インフォメーションボタンクリック（オプトアウト）|自動リロード|備考|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|バナー|-|◯|◯|◯|自動リロードの間隔は抽選リクエストの結果次第でデフォルト60秒|
|アイコン|-|◯|◯|◯|同上|
|インタースティシャル|-|◯|-|◯|自動リロードはデフォルト有効、広告が閉じた直後にリロード開始|
|静止画ネイティブ|-|◯|◯|◯|自動リロードはデフォルト無効、アプリ側で最小30秒〜指定可能|
|フルボード|-|◯|◯|-|-|
|動画|◯|◯|◯|-|-|
|動画ネイティブ|◯|◯|◯|-|-|

## <a name ="difference_mediation_customevent">AdMobメディエーションとMoPubカスタムイベントの違い</a>
|名称|正式連携|アダプタ開発|メディアへの提供|レポートAPIキー|
|:-:|:-:|:-:|:-:|:-:|
|AdMobメディエーション|○|nend|AdMob|○|
|MoPubカスタムイベント|×|nend|nend|×|

### 補足
#### カスタムイベントの方が設定手順が若干多い
メディエーションでもカスタムイベントでも、AdMobやMoPubの管理画面で、広告配信時に`nend`を認識してもらうための設定は必要。その際に、カスタムイベントの方が若干設定手順が多くなる。  

- 参考）https://github.com/fan-ADN/nendSDK-iOS-MoPub-CustomEvent/wiki/導入方法


#### 実装の手間はほぼ同じ
ただし、AdMobメディエーションとMoPubカスタムイベントでは、アプリに組み込む`アダプタが異なる`

## <a name ="response">レスポンスが早い（＝レイテンシーがない）のはなぜか？他社SDKとの違いは？</a>
- 他社と比較や調査をしたわけではなく、明確な違いを答えるのは難しい
- 基本的に、端末性能や通信状況などによってレスポンスの速度は異なるもの
