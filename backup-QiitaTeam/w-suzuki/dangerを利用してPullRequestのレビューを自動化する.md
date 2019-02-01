dangerを利用してPullRequestのレビューを自動化する
[danger](https://danger.systems)とはCIプロセスで動作させるOSSです。

これを利用することでGitHubやGitLab（BitBucketなどでも使えるっぽい）等でPRが発生した際に以下の作業を自動化することができます。

* レビューに然るべきメンバーがアサインされているか？
* どのIssueの修正か？
* どんな修正か、ちゃんと説明があるか？
* テストが実施されているか？
* 適切なサイズでPRされているか？（diffのライン数でチェック）
* TODOが残っていないか？
* etc

![examples](http://danger.systems/images/danger-screenshot-074f084c.png)

これらの指摘をPRの情報やdiffから抽出し、直接PRに対してコメントしたりPRをfailにしたりすることが出来ます。
（diff差分に対してインラインでコメントも可能です）

さらにプラグインの開発が容易に行えるので、[Findbugs](http://findbugs.sourceforge.net)など静的解析ツールも絡めて利用できます。

## セットアップ
設定の仕方はあちこちに転がっているので割愛

## 使い方

設定した`Dangerfile`から幾つかサンプルをピックアップします。
（今回はRubyを使っていますが、JSやSwift版もあります）

まずはレビューイが未指定な状態にしてみます。

```ruby:Dangerfile
has_assignee = github.pr_json["assignee"] != nil
fail("誰もアサインされていないようです", sticky: false) unless has_assignee
```

するとCIのチェックで、このようにGitHub上で指摘されます。
<img width="781" alt="danger-fail.png" src="https://fancsdev.qiita.com/files/ef3d8145-393e-62d9-6157-8de7d98f717c.png">

ちゃんとPRのステータスもfailになっています。
<img width="552" alt="danger-github-state.png" src="https://fancsdev.qiita.com/files/daedc55d-0028-4e55-735d-a7419ddfc10c.png">

次に、IssueとPRが紐づいているかチェックします。
<img width="333" alt="danger-bad-example.png" src="https://fancsdev.qiita.com/files/aeed75b2-c40b-5fd9-2303-da4face3fa77.png">

```ruby:Dangerfile
unless /Fixes #[\d]/ =~ github.pr_body
    warn("どのIssueの修正か分かるように\"Fixes #[issues番号]\"を付けてください", sticky: false)
end
```

これもちゃんと警告してくれます。
<img width="778" alt="danger-warn.png" src="https://fancsdev.qiita.com/files/e2df3a4b-1863-31eb-c197-709c8df4d31f.png">


次に、TODOが残っているか探します（そういうプラグインもあるようですが、インラインじゃなかったので自炊）

```ruby:Dangerfile
# Checking git.diff has "TODO"
diff_files = (git.modified_files - git.deleted_files) + git.added_files
diff_files.each do |target|
    unless target == "Dangerfile"
        diff = git.diff_for_file(target)

        index = 0
        offset = 0

        diff.patch.each_line do |line|
            if line.start_with?("+") && ((/\/\/\ Todo/i =~ line) || (/\/\/\Todo/i =~ line))
                warn("TODOが残っています", file: target, line: (index + offset))
            end
            unless offset == 0 || line.start_with?("-")
                index = index + 1
            end
            if line.include? "@@"
                # Note: diff.patchからinlineコメントするための行数を取得する
                line = line[line.index("+"), line.length]
                line = line[1, (line.index(",") - 1)]
                offset = line.to_i
                index = 0
            end
        end
    end
end
```

こんな感じで、インラインでコメントしてくれます。
<img width="766" alt="danger-todo.png" src="https://fancsdev.qiita.com/files/5e706657-3a32-6796-fbf3-dea103fe9553.png">

Androidなら、Androidの`Lint`やJavaの`Findbugs`で、人がレビュー開始する前に指摘ができます。
（すでにプラグインが公開されていますが、ディレクトリ構造の都合上、少しだけ改造して利用）

```ruby:Dangerfile
# Findbugs
findbugs.gradle_module = "lib-core"
findbugs.gradle_project = "Android-NendSDK/"
findbugs.gradle_task = "lib-core:findbugs"
findbugs.report_file = "lib-core/build/reports/findbugs_report.xml"
findbugs.report(true)

# Android Lint
android_lint.gradle_project = "Android-NendSDK/"
android_lint.gradle_task = "lib-core:lintProductionRelease"
android_lint.report_file = "lib-core/build/reports/lint-results-productionRelease.xml"
android_lint.filtering = true
android_lint.lint(inline_mode: true)
```

これもインラインでコメントします。
<img width="653" alt="danger-android_lint.png" src="https://fancsdev.qiita.com/files/f9f3ccf5-40ce-ee9b-64db-90d16764f4aa.png">
<img width="654" alt="danger-findbugs.png" src="https://fancsdev.qiita.com/files/9b93e897-d79f-17d9-3f76-16af079da408.png">

iOSなら`Swift`向けの`Lint`もあるのですが、nendSDKの開発は汎用性など都合から`Objective-C`なのでXcode付属の静的解析の結果を利用
（これもプラグインは無かったので自炊）

```ruby:Dangerfile
# Check xcode analyzing
require 'rexml/document'

analyzedArm64Dir = "clang/StaticAnalyzer/NendAd/NendAdFramework/normal/arm64"
Dir.foreach(analyzedArm64Dir) do |file|
    if file.end_with?(".plist")
        targetFileName = nil
        doc = REXML::Document.new(File.new(analyzedArm64Dir + "/" + file))
        doc.elements.each("plist/dict/array") do |element|
            element.elements.each("string") do |filename|
                diff_files.each do |target|
                    if filename.text.include? target
                        targetFileName = target
                    end
                end
            end
            unless targetFileName == nil
                element.elements.each("dict/array/dict/dict") do |child|
                    if child.elements['key'].text == 'line'
                        element.elements.each("dict/array/dict") do |messages|
                            messages.elements.each_with_index() do |key, index|
                                if key.text == "message"
                                    offset = (index + 2) # <- 1始まり、かつ次の要素
                                    message = messages.elements[offset].text
                                    unless message.empty?
                                        warn(message, file: targetFileName, line: child.elements['integer'].text.to_i)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
```

※`.plist`で吐き出された解析結果のフォーマットがイマイチなので、ちょっと探し方が強引・・
　`end end end ...`とか行儀が悪い・・
　こちらはおいおいプラグインを書いて公開してもいいかなと思ってます。

これもインラインでコメントします。
<img width="651" alt="danger-xcode_analyzer.png" src="https://fancsdev.qiita.com/files/1089bfcb-8439-0d31-205d-901cbdc360fe.png">

そして公開されている[danger-lgtm]()を利用し、すべてのチェックがOKだったらLGTM画像を貼りつけます
（画像はランダムで貼りつけられるそうです）

```ruby:Dangerfile
lgtm.check_lgtm
# Or selected image
# lgtm.check_lgtm image_url: 'https://github.com/fmn/alfred-engineer-homeru-neko-workflow/raw/master/images/01.png'
```

<img width="771" alt="danger-lgtm.png" src="https://fancsdev.qiita.com/files/7a475648-58c1-deae-81e7-044111795627.png">

## 作業を効率化したら
![07_定時あがり.png](https://fancsdev.qiita.com/files/173d048b-b3b3-b92c-b0d2-33b82a2c94ef.png)
