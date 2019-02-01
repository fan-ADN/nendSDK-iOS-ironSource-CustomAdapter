SDKチーム提供、疎通確認用テストアプリをFabricから使う（Android版）
nend開発終盤にお馴染みの疎通確認アプリですが、今回から[Fabric](https://get.fabric.io/)を使って配布してみることにしました。
→いや、インストールも含めて自前がいい！という方は[こちら](https://fancsdev.qiita.com/WataruSuzuki/items/bd503428defb2ae4fb1a)

以下、Fabricを使って疎通確認用のテストアプリをインストールする手順です。
[iOS版はこちら](https://fancsdev.qiita.com/WataruSuzuki/items/1abaa98ef7ab0d194d4f)

## Betaアプリを起動
Betaアプリが見当たらない場合は[こちら](#prepare_beta_link)をご参照ください。

Fabricでは **Beta** というツールを経由して配布されているアプリを取得します。
検証端末にはすでにBetaアプリがインストールされているので起動します。
<img src="https://fancsdev.qiita.com/files/fe1c63e9-006a-021a-6685-7775cb932614.png" width="320">

## インストールしたいアプリを選択

場合によってはメニューから「Reflesh」をタップして最新のバージョンを読み込んでください。
（バックグラウンドで定期的に問い合わせている感じはないので、自らフェッチしないとダメっぽい？）
<img src="https://fancsdev.qiita.com/files/78c155f4-174c-50e9-e21b-8d63d3851a7a.png" width="320">

## インストールしたいバージョンを選択して実行
<img src="https://fancsdev.qiita.com/files/6ec2372a-79a3-51e7-b30e-698b8f48aa38.png" width="320">

<a name="prepare_beta_link"></a>
## Betaアプリが無い場合

以下の手順でBetaアプリを取得してください。

1. fancs.adndev01@gmail.comのメールアカウントで適当なメーラーを開きます。
2. `SDK Team (via Crashlytics) ` という差出人から来ているメールがあるので、それを開いて[Let Me In](https://apps.crashlytics.com/register/3HyvbD8KEevyrKxgscLsrMvR/rsvp?utm_medium=email&utm_source=invite_tester)をクリックして後は道なりに進んでいくとダウンロードできます。

<img src="https://fancsdev.qiita.com/files/04700bad-d11c-3666-1fdb-523082086406.png" width="320">
