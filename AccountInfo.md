# アカウント関連

動作確認とかで使う共有アカウントの情報です。

GitHubにプッシュする都合上、念の為パスワード類はzip暗号化したテキストファイルに記載します。  
※9から始まるやつ

## AppStore関連

#### 検証用Apple ID

* ID
  * fancs.adndev01@gmail.com
* PW
  * 別ファイル参照

#### 検証用Apple ID (SDKチーム用)

* ID
  * fancs.adndev01+sdkteam@gmail.com
* PW
  * <9から始まるやつ>-SDK-Team
* 秘密の質問
  * 別ファイル参照

#### 審査用Apple ID

念には念、でここに書かない（誰かに聞く）

#### 開発用Apple ID

* ID
  * sdkteamsdk@gmail.com
* PW
  * 別ファイル参照
* 秘密の質問
  * 別ファイル参照

## 検証用の他社広告アカウント関連

#### [AdMob](https://admob.google.com/home/)

* ID
  * fancs.adndev01@gmail.com
* PW
  * 9から始まるやつ

#### [MoPub](https://app.mopub.com/dashboard)

* ID
  * fancs.adndev01@gmail.com
* PW
  * 別ファイル参照

#### [IronSource](https://platform.ironsrc.com/partners/dashboard)

* ID
  * fancs.adndev01@gmail.com
* PW
  * 9から始まるやつ

#### [AppLovin/MAX](https://dash.applovin.com/o/mediation/ad_units/579536)

* ID
  * fancs.adndev01@gmail.com
* PW
  * 別ファイル参照
* 2FA
  * 検証端末`Fan-SD199`で電話番号登録してSMS認証に利用
  * [他の複数の検証端末](https://docs.google.com/spreadsheets/d/1w0XRaWVvFHCDHUXrEI6KTXsZXUr_pRhu-Ncb9n_EoLQ/edit#gid=1946028988)でAuthyアプリを利用して認証に利用
  * ログイン時は、上記のSMS認証かAuthyでトークン認証を利用する

## CI関連

#### Jenkins

* ID
  * sdkteam
* PW
  * 9から始まるやつ

#### Fabric

* ID
  * fancs.adndev01@gmail.com
* PW
  * 9から始まるやつ

#### bitrize

* ID
  * fancs.adndev01@gmail.com
* PW
  * 別ファイル参照

## npm

* username
  * fan-communications
* email
  * ossdev@fancs.com
* PW
  * servicedev-npm-＜9から始まるやつ＞
* Gravatar（npmアカウントのprofile管理で利用）
  * https://en.gravatar.com/emails/
  * `fancs.adndev01@gmail.com`でgoogleアカウント連携を利用

## Google

#### flutter publish
* username
  * oss dev
* email
  * ossdev@fancs.com
* PW
  * 9から始まるやつ

#### 検証端末Googleアカウント
* ID
  * fancs.adndev01@gmail.com
* PW
  * 9から始まるやつ

## GitHub (CI/CD用)
* username
  * fan-bot-a8kun
* email
  * fancs.adndev01@gmail.com
* PW
  * a8kun-＜9から始まるやつ＞
* 2FA Authentication
  * 検証端末3台にMicrosoft Authenticatorを設定
    * Fan-SD007 / iPhone11
    * Fan-SD199 / iPhoneX
    * Fan-SD198 / iPhone 8 Plus
  * Recovery-codeは`9から始まるやつ`で解凍
