# Apple証明書の管理・運用方法
## 説明
Appleの証明書の作成は、基本的にチーム内の誰か1人のMacで作成したものを共有して使用します。
証明書の作成者は、作成後にキーチェンから証明書を書き出して`.P12`ファイルを作成します。
そのファイルをチームメンバーや必要に応じて他の開発者に配布します。

#### 補足
- 開発用、公開用どちらも証明書は年1回ごとに更新（作成し直し）が必要
- 新しい証明書でビルドする時のダイアログ
  - Macに証明書をインストール後のビルド時に、キーチェーンへのアクセス確認ダイアログが出ますが、ここは「常に許可」を選択しておくとビルド毎にダイアログが出なくなるのでお勧め

## 証明書作成手順
この作業は証明書の更新・新規作成が必要なときに、証明書作成を担当する担当者のMacで作成を行います。

1. キーチェーン＞キーチェーンアクセス＞証明書アシスタント＞認証局に証明書を要求
1. ユーザのメールアドレス：iOSDeveloperProgramに登録しているメールアドレスを入力
    1. 通称：分かり易い名前を入れる
    1. CAのメールアドレス：空欄
    1. 要求の処理：ディスクに保存を選択し、鍵ペア情報を指定にチェックを入れる
3. 証明書署名要求ファイル（CSR）の保存先を指定する
4. 鍵ペア情報：鍵のサイズは2048ビット、アルゴリズムはRSA
5. Apple Developer Centerにログインし、Certificates, Identifiers & Profilesを開く
6. iOS AppsのCertificates で更新する証明書をRevoke
7. Certificates > Development or Production を選択して「+」ボタンを押下
    1. Development (開発用を作る場合)：iOS App Developmentを選択してContinue
    1. Production (ストア公開用を作る場合)：App Store and Ad Hoc
8. Upload CSR file. で 作成済みの証明書署名要求ファイル（CSR）をアップロードしてGenerate
9. 証明書（.cer）をダウンロード
10. ダウンロードした証明書をダブルクリックでキーチェーンアクセスに登録する
11. 古い証明書がキーチェーンアクセスに残っている場合は削除しておく
12. 証明書を右クリックしてp12ファイルに書き出す
13. p12ファイルをチームメンバーに配布する
    1. チームメンバーにはRedmineの保管場所に添付して周知でOK

## 証明書の保管場所
- [Redmine: nend >> 開発wiki / SDK関連](https://pjmanage.adn-mobasia.net/projects/developer/wiki/Apple証明書)
  - これらのファイルをMacにダウンロード > ファイルをダブルクリック > 下記のパスワード入力 > Macのキーチェーンに登録します。

#### 補足
上記Redmineにも本wikiと同じ内容を記載がありますが、こういうナレッジの管理や共有は今後Redmineではなくwikiを活用していくため、このwikiに内容を移植しました。

## 参考ドキュメント、記事など
- https://developer.apple.com/jp/support/certificates/
- https://dev.classmethod.jp/articles/update-ios-certificate-and-provisioning-profile/
