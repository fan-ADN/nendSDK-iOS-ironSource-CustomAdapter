UnityにAndroidのlayoutリソースを取り込む際は、id宣言と参照の順番に注意する
例えば↓な感じのレイアウト定義があったとします。

```xml
    <ImageView
        android:id="@+id/image"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="left|bottom"
        android:src="@drawable/hoge"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintRight_toLeftOf="@id/spacer"
        />

    <android.support.v4.widget.Space
        android:id="@+id/spacer"
        android:layout_width="0dp"
        android:layout_height="0dp"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintLeft_toRightOf="@id/fuga_button"
        app:layout_constraintRight_toRightOf="parent"
        />
```

この場合`@id/spacer`は参照が宣言より先に発生していますが、Android Studio付属のコンパイラでは特に問題とはなりません。
（ひょっとしたら古いバージョンは違うかもしれません）

が、こういうレイアウト定義を含む`.aar`などを取り込んでUnityでビルドするとエラーになります。

しかも厄介なことに、エラーログの内容が**このレイアウト定義が利用する依存ライブラリの追加漏れと変わらない**ので、

![36_なるほどわからん.png](https://fancsdev.qiita.com/files/7e32612f-af6d-39b7-4e40-ca032e284dae.png)

となりましたww

今後のためのメモ。

