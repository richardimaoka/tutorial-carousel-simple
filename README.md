## 0. はじめに

React でライブラリを利用することなくカルーセルを作成するためのチュートリアルを用意しました。理解の前に「動かす感覚」を味わってもらうため、**ほぼ全てコピー&ペーストのみで**、素早く進められるチュートリアルになっています。

<iframe width="640" height="360" src="https://www.youtube.com/embed/ganTFTuqgwc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

カルーセルはライブラリを利用しても実装できますが、このチュートリアルでは直に CSS や JavaScript の機能を使って自分で実装します。カルーセルを実装をするのに便利な CSS や JavaScript の機能を学ぶため、その中でも簡単な機能しか使わないためです。

ライブラリ利用の有無については、どちらかが絶対的に優れた選択肢ということはないので、状況に応じて両方使えるようになっている方が良いでしょう。

### 事前準備

node と npm がインストール済みであることを確認して下さい。

### git レポジトリのクローン

:large_orange_diamond: Action: ターミナルで以下のコマンドを実行してください

```terminal
git clone https://github.com/richardimaoka/tutorial-carousel-simple.git
cd tutorial-carousel-simple
```


## 1. Reactクライアントのセットアップ

このチュートリアルでは以下の画像のように、Reactクライアントと、さらに1つのターミナルを立ち上げます。

![アートボード 3.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/577bc67d-b285-7a05-a15f-3bd8e190bcb0.png)

まずはReactクライアントをセットアップしていきましょう。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/57c0b6f.patch # npx create-react-app client --template typescript
git apply patches/2cd7cbe.patch # (cd client && npx prettier --write .)
cd client
npm install
npm run start
```

:white_check_mark: Result: http://localhost:3000/ で以下のように表示されればOKです

![2022-05-06_20h00_38.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/42c1d114-7b6b-2b4c-6116-3714b36b8e03.png)

Reactロゴが大きく表示されているこの画面から、画面の表示をシンプルなものに差し替えましょう。そうすると、それ以降行うソースコード変更がわかりやすくなります。

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/faa3c42.patch # empty application
```

:white_check_mark: Result: 以下のように表示されればOKです

![2022-05-06_21h29_54.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/ff80a767-9298-5fa0-c66a-f02ad9efe2a7.png)

このプロセスは立ち上げたままにしてください。


## 2. カルーセルのスライダーを作成

:large_orange_diamond: Action: 新しいターミナルを開いてください。

![アートボード 2.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/1f714def-aafd-9c7d-cea6-319c3c2bf966.png)

まずは

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/fac9fb2.patch # images added
```

:white_check_mark: Result: 以下のように表示されればOKです

![2022-05-23_00h09_48.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/9165278d-9c3e-9a73-c019-3fcf24ad4901.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/9428da6.patch # display: flex
```

:white_check_mark: Result: 以下のように表示されればOKです

![2022-05-23_00h06_42.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/9509f6bf-decf-e2d8-3f6c-c0204bfd6dc1.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/9428da6.patch # display: flex
```

:white_check_mark: Result: 以下のように表示されればOKです

![2022-05-23_00h06_42.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/9509f6bf-decf-e2d8-3f6c-c0204bfd6dc1.png)

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/ab96f3c.patch # overflow-x: auto
```

:white_check_mark: Result: 以下のように表示されればOKです

<iframe width="640" height="360" src="https://www.youtube.com/embed/yREnYC_c7Ug" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:large_orange_diamond: Action: 以下のコマンドを入力してください。

```shell
git apply patches/bbf2ab3.patch # scrollSnapType and scrollSnapAlign
```

:white_check_mark: Result: 以下のように表示されればOKです

<iframe width="640" height="360" src="https://www.youtube.com/embed/yREnYC_c7Ug" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
