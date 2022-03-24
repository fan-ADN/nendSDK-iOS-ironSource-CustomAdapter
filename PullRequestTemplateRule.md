# プルリクエストのテンプレート運用ルール

- デフォルトのテンプレートは`.github / PULL_REQUEST_TEMPLATE.md`に記載する。
- その他は`.github / PULL_REQUEST_TEMPLATE / XXX.md`とする。
- PRを作成するとデフォルトのものがテンプレートとして表示されます。
- その他のテンプレートを表示するためには、デフォルトを表示したページのURL末尾に`&template=XXX.md`と加えると変更できます。
  - 例）　リリース用テンプレート `&template=release.md`
- 今後のテンプレート修正は、PRを出すタイミングで適宜コミットに含めるなどの方針でお願いします。
