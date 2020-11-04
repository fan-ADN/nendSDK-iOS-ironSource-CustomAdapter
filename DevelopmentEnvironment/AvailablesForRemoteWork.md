# リモートワークから使えること

現状では以下のことが行えます。
- [VNC](#vnc)によるリモートデスクトップ接続
- [OpenSTF](#openstf)を利用した特定端末でのapk実行
  - **新しいVPN設定方法に変わってから使えるか試せていません**
    - 利用できる事が確認出来た人はこのページの内容も更新してください
  - VNC用に新しくVPN設定したMac mini(team-section-third)にはOpenSTFをセットアップしていません

## VPN接続準備
- 情シスから支給されているPC（Windows/Mac）でSonicWall VPN Connectionに接続
  - 接続先情報
    - ホスト名:`wap2020.fancs.com`
    - ログイングループ:`FANCS-ALL`

## <a name="vnc">VNCの利用方法</a>

### 事前準備
- Real VNC Viewerをインストールする
  - https://www.realvnc.com/en/connect/download/viewer/
  - 無料で使えます

### 使い方
- 参考記事
  - https://www.ipentec.com/document/mac-os-x-remote-connection-from-windows-using-vnc
- 接続情報
  - VNC Server: `192.168.88.32`
  - Username: `sdkteam-macmini`
  - Password: 9～のやつ

## <a name="openstf">OpenSTFの利用方法</a>

### OpenSTF起動方法
1. オフィス出社済みの方に使いたい端末をSlackで連絡して共有マシンに`adb`接続
2. 以下のコマンドで立ち上げる
  ```bash
  rethinkdb &
  stf local --public-ip <your_internal_network_ip_here>
  #現状だと「stf local --public-ip <1.1.1.100>」って感じになります。
  ```
3. 起動が済んだら、ブラウザから「 http://1.1.1.100:7100 」にアクセス
4. 特にユーザ管理はしていないので、適当な名前とメールアドレスを入力してログイン
5. 利用したいデバイスを選択

apkのアップロードなどはすぐにやり方わかると思います。
