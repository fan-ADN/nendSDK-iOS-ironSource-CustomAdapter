# 共有マシン

CIやリモートワークに使っているマシンに関する情報です。  
ログインパスワードは特筆なければ**9から始まるやつ**です。

[[CI用マシンには起動する順番|BootingMachines]]がありますので、ご注意ください。


## iMac（21.5インチ）
- Runner名
  - sdkteam-no-iMac
- コンピュータ名
  - sdkteamのiMac
* ID
  * teamsdk
- こちらにJenkins本体がインストールされています（master）
- Adobeアカウントが必要な作業は、こちらのiMacを使います。

## Galleria（Windowsマシン）
- Runner名
  - Win10-Galleria
* ID
  * teamsdk
- 主にAndroid向けにビルドに使用（nendSDKとUnityのAndroidビルド）
- 起動する順番とJenkins接続には少々ハックの上で接続しています。

## mac mini（CI用、リモート用）
- Runner名
  - team-section-third
- コンピュータ名
  - sdkteam Mac mini
* ID
  * sdkteam-macmini
- 情シスからのレンタル品
- リモートワーク環境でVNCにて共有PCを操作したい時にこのMac miniを経由して使います。
  - リモート用VPN設定情報
  - IPアドレス:192.168.88.32
  - Gateway(ルーター):192.168.88.1

## mac mini（CI用、OpenSTF用）
- Runner名
  - sdkteam-no-mac-mini-beside-mlteam
- コンピュータ名
  - NendSDK の Mac mini
* ID
  * Self-hosted-Runner
  * F@N-Taroは情シス用に作ったアカウントなので基本的には使わない
- OpenSTFとか使う用です

## mac mini（CI用）
- Runner名
  - slower-mac-mini
- コンピュータ名
  - SDKteam の Mac mini
* ID
  * SDKTeam
- 年季が入っているので動作が緩慢です。
- 主にiOS向けにビルド補助に使用（nendSDKのFramework生成とUnityのiOSビルド）
- ストレージの容量だけが取り柄なので、以下を基準に使うことをオススメします。
  - Unityなど容量でかいものを置いておく場所
  - 比較的軽いビルドジョブ
  - 時間がやや掛かっても構わないジョブ

# Self-hosted runnersのマシン
- GitHub Actionsの実行にこれらの共有PC（Windows/Mac）を利用しています。
- RNxxx(WidnowsノートPC)はオフィスではなく自宅にて追加マシンとして割り当てて利用しています。
  - `RN0878`はfan-t-fukuokaの家で動かしています
- `Offline`になっているものは、単純にネットワーク未接続、または、マシンのOSアップデートが動いた時に再起動待ちになっている可能性があります。
![img](https://github.com/fan-ADN/nendSDK-Document-Private/blob/master/DevelopmentEnvironment/images/self-hosted-runners-machine-list.png)
