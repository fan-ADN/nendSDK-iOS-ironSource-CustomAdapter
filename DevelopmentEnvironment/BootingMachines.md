# CI用マシンの起動順序

当然ながらの順番ですが、以下の順番が守られている必要があります。

1. Jenkinsのmasterがインストールされているマシンを起動、ログイン
2. Jenkinsを起動
3. Jenkinsのスレーブ用PCを起動
4. スレーブをmasterに接続
  - Windowマシンの接続はさらに手順があります（参考：https://fancsdev.qiita.com/WataruSuzuki/items/520dfa07bd14e3c29888）
    1.  スレーブWindowsマシンのSourceTreeを起動
      - SourceTreeのオプションにて起動時にPuTTYを起動するようにしています。
      - Windows環境変数にてPuTTYのSSH鍵をcmdが参照するようにしているので、ここ省くとGitHubリポジトリ参照できません
    2. Jenkinsサーバが起動したら、スレーブWindowsマシンからJenkinsサーバへブラウザでアクセス
    3. ノード一覧で当該スレーブWindowsマシンを選択し「Launch agent」を選択する
    4. Windowsマシン側でJNLPの実行が要求されるので実行する

## Jenkinsの起動方法
JenkinsはJavaで書かれたアプリケーションです。
また`LaunchAgents`に対応しているので、現状ではmacのログインをトリガーに自動で起動します。

#### 自動起動の解除
`launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.jenkins.plist`

#### 手動で起動する場合
`java -jar /usr/local/opt/jenkins/libexec/jenkins.war --httpPort=8081`

## 補足
* macOS系マシンはスケジュールにより自動で電源ONします
* Windows系マシンはスケジュール起動がちょっと面倒なので、手動で電源ONが必要です。
* マシンの電源OFFはスケジュールにより22:00に自動でシャットダウンします。

### macOSでの強制シャットダウンスケジュール
スケジュールからシャットダウンできない場合は`crontab`で強制的に落としています
```
30 22 * * * /sbin/shutdown -h now
```
- 参考情報
  - https://apple.stackexchange.com/questions/25001/how-can-i-forcibly-shut-down-my-mac-at-an-appointed-time
  - http://qiita.com/ryusukefuda/items/878556158d8f1d3d887a
