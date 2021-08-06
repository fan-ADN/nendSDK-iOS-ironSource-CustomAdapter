# 共有マシン

CIやリモートワークに使っているマシンに関する情報です。  
ログインパスワードは特筆なければ**9から始まるやつ**です。

[[CI用マシンには起動する順番|BootingMachines]]がありますので、ご注意ください。


## iMac（21.5インチ）
- コンピュータ名
  - sdkteamのiMac
* ユーザ名
  * teamsdk
- Runner名
  - sdkteam-no-iMac
  - カスタムラベル
    - iMac
    - normal
    - flutter
- こちらにJenkins本体がインストールされています（master）
- Adobeアカウントが必要な作業は、こちらのiMacを使います。

## Galleria（Windowsマシン、CI用）
- コンピュータ名
  - DESKTOP-PGM4RTG
* ユーザ名
  * teamsdk
- Runner名
  - Win10-Galleria
  - カスタムラベル
    - desktop
- 主にAndroid向けにビルドに使用（nendSDKとUnityのAndroidビルド）
- 現在、実機端末は繋げておらず、AndroidのEmulatorだけ立ち上げています。
- ~~起動する順番とJenkins接続には少々ハックの上で接続しています。~~
  - 現在Jenkinsは動かしていません。
- 2021年8月以降、PCの電源を切ってあります
  - リモートワーク環境からOSアップデートやシミュレーターなどのメンテナンスが出来ないため
  - リモートワークでの良い活用方法が見つかれば利用再開してもいいかも

## mac mini（CI用、リモート用）
- コンピュータ名
  - sdkteam Mac mini
* ユーザ名
  * sdkteam-macmini
- Runner名
  - team-section-third
  - カスタムラベル
    - Mac-mini
    - normal
    - fast
- 情シスからのレンタル品
- Intelチップの共有Macの中では動作が速い方です
- リモートワーク環境でVNCにて共有PCを操作したい時にこのMac miniを経由して使います。
  - リモート用VPN設定情報
  - IPアドレス:192.168.88.32
  - Gateway(ルーター):192.168.88.1

## mac mini（CI用、OpenSTF用）
- コンピュータ名
  - NendSDK の Mac mini
* ユーザ名
  * Self-hosted-Runner
  * F@N-Taroは情シス用に作ったアカウントなので基本的には使わない
- Runner名
  - sdkteam-no-mac-mini-beside-mlteam
  - カスタムラベル
    - Mac-mini
    - normal
    - Catalina
- OpenSTFとか使う用です

## mac mini（CI用）
**動作遅くて限界のため、現在は電源OFFにしています。**
- コンピュータ名
  - SDKteam の Mac mini
* ユーザ名
  * SDKTeam
- Runner名
  - slower-mac-mini
  - カスタムラベル
    - 未使用
- 年季が入っているので動作が緩慢です。
- 主にiOS向けにビルド補助に使用（nendSDKのFramework生成とUnityのiOSビルド）
- ストレージの容量だけが取り柄なので、以下を基準に使うことをオススメします。
  - Unityなど容量でかいものを置いておく場所
  - 比較的軽いビルドジョブ
  - 時間がやや掛かっても構わないジョブ

## mac mini M1（M1検証用、CI用）
- コンピュータ名
  - sdkteamのMac mini m1
* ユーザ名
  * sdkteam-macmini-m1
- Runner名
  - sdkteam-no-mac-mini-m1
  - カスタムラベル
    - Mac-mini
    - m1
- GitHub ActionsのRunnerで使用したい場合
  - jobsで`runs-on: [self-hosted, macos, m1]`のようにラベルを指定する

# Self-hosted runnersのマシン
![img](https://user-images.githubusercontent.com/9563506/127966384-4eeb8b12-52ef-44f4-ba62-c43c9e7aeb22.png)

- GitHub Actionsの実行にこれらの共有PC（Windows/Mac）を利用しています。
- [カスタムラベル](https://docs.github.com/ja/actions/hosting-your-own-runners/using-labels-with-self-hosted-runners)を作成して利用できます
  - GitHub ActionsのRunnerでカスタムラベルを使用したい場合
    - jobsで`runs-on: [self-hosted, macos, m1]`とか`runs-on: [self-hosted, Windows, laptop]`のようにラベルを指定する
  - ラベル追加や削除などしたい場合はマネージャーに依頼してください
- RNxxx(WidnowsノートPC)はオフィスで共有マシンとしてではなく、自宅にてRunnerマシンとして割り当てて利用しています。
  - 主にAndroid向けのビルドやテストに使用しています
  - `RN1541`はfan-t-fukuokaの家で動かしています
- `Offline`になっている場合の可能性
  - ネットワーク未接続
  - OSアップデートによる再起動後のログイン待ち
  - 未使用
  - など
- マシンが自動的にスリープ状態にならないように設定しておく
  - [Macのスリープ/スリープ解除を設定する](https://support.apple.com/ja-jp/guide/mac-help/mchle41a6ccd/mac)
    - Macが自動的にスリープ状態にならないようにする: 「ディスプレイがオフのときはコンピュータを自動でスリープさせない」を選択します。
  - Windowsのやり方はググる
- 参考記事など
  - [GitHub Actions のデバッグをローカルで行う](https://zenn.dev/snowcait/articles/2b4a903b9fd584)
- Self-hosted runnersにマシンを追加する手順
  - https://docs.github.com/ja/actions/hosting-your-own-runners/adding-self-hosted-runners#adding-a-self-hosted-runner-to-an-organization
  - WindowsPC
    - 上記Docsの手順に沿って設定する
      - アクセストークンの発行はマネージャーに依頼
      - シェルを管理者権限で実行する必要があり
    - JDKインストール
      - Java8が入ったバージョン
    - Android Studioをインストール
      - AndroidのSDK、adbも同梱されている
    - 環境変数の設定
      - JAVA_HOME
      - ANDROID_SDK_ROOT
      - Pathに追加
        - adb.exeのパス
