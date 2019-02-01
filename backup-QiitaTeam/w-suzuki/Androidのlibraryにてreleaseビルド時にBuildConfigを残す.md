Androidのlibraryにてreleaseビルド時にBuildConfigを残す
罠にハマったのでメモ

Flavorに応じて設定を変えたりする際に`BuildConfig`に書き出された値を参照することがあると思いますが、これ実は`apply plugin: 'com.android.library'`しているモジュール（つまりjarやaar作成時）の場合には`proguard`で消されてしまうようです・・

※`BuildConfig.DEBUG`では居るので...(・A・)

対策はもちろん`-keep`に加えることでreleaseビルドでも`BuildConfig`の参照が継続して行えます。

```groovy
-keep public class cat.homeru.engineer.BuildConfig {
    public *;
}
-keepclassmembers public class cat.homeru.engineer.BuildConfig {
    public *;
}
```
!["仕様です"](https://raw.githubusercontent.com/fmn/alfred-engineer-homeru-neko-workflow/master/images/27.png)
