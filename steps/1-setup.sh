#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 1. GraphQLサーバーのセットアップ

# このチュートリアルでは以下の画像のように、4つのプロセス(上段)と、さらに1つのターミナル(下段)を立ち上げます。合計で5つと数は多いですが、使い分けは簡単なので心配しないでください。

# ![アートボード 1.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/0b6ce57a-663d-3403-99ed-54683644fd7c.png)

# まずは GraphQLサーバーをセットアップしていきましょう。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```terminal
git apply patches/201ea30.patch
git apply patches/f482a1d.patch
git apply patches/b979ec5.patch
git apply patches/425a387.patch
git apply patches/5847c01.patch
git apply patches/ac56d80.patch
# shellcheck disable=SC2164 # REMOVE THIS IN aggregate.sh
cd server
npm install
npm run server-start
# ```

# :large_orange_diamond: Action: ブラウザで http://localhost:4000/ を開いてください

# :white_check_mark: Result: 以下のような Apollo Studio Explorer の画面が表示されます。

# ![2022-05-06_20h54_04.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/4f58c6b3-6efe-f0de-28cd-012fdecb499b.png)

# :large_orange_diamond: Action: "Query your server"ボタンを押してください

# :white_check_mark: Result: 以下のような画面に遷移します。

# ![2022-03-06_09h04_06.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e32d47ea-e138-8beb-acec-1441174f7e11.png)

# :large_orange_diamond: Action: 以下のクエリを Apollo Studio Explorer で入力して Run を押してください。

# ```terminal
# {
#   hello
# }
# ```

# :white_check_mark: Result: GraphQL サーバーから以下のレスポンスが得られます。

# ![2022-05-06_20h23_16.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/cf7b77e0-9f56-ee9f-d767-563213a7c442.png)

# これで GraphQ サーバーが動作することを確認できました。

# このプロセスは立ち上げたままにしてください。

git show --patch 201ea30 > patches/201ea30.patch

git apply patches/57c0b6f.patch # npx create-react-app . --template typescript
git apply patches/2cd7cbe.patch # npx prettier --write .
git apply patches/faa3c42.patch # empty application
git apply patches/fac9fb2.patch # images added
git apply patches/9428da6.patch # display: flex
git apply patches/ab96f3c.patch # overflow-x: auto
git apply patches/bbf2ab3.patch # scrollSnapType and scrollSnapAlign
git apply patches/78f448e.patch # CarouselItem component
git apply patches/c72d5bc.patch # CarouselContainer component
git apply patches/23f1c64.patch # Add CarouselControll
git apply patches/93e3816.patch # add barebone buttons
git apply patches/d52f9d5.patch # move the carousel slider to the 2nd item
git apply patches/118cca8.patch # move the carousel slider to the 3rd item
git apply patches/2103e9d.patch # snap state
git apply patches/447073a.patch # buttons to work
git apply patches/b5d8ceb.patch # centering buttons
git apply patches/f2d0df6.patch # decorate buttons
git apply patches/9dc0fda.patch # (temp) hide the scrollbar
git apply patches/96c33ee.patch # buttons as a separate component
git apply patches/1e29dab.patch # define imagestate
git apply patches/02126c6.patch # (origin/carousel-image-state, carousel-image-state) replace state with the new style