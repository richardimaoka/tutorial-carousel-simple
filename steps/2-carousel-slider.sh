#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 2. カルーセルのスライダーを作成

# まずはカルーセルで使う画像を並べて表示します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/fac9fb2.patch # images added
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。この時点では縦に並んでいます。

# ![2022-05-23_00h09_48.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/9165278d-9c3e-9a73-c019-3fcf24ad4901.png)

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/9428da6.patch # display: flex
# ```

# :white_check_mark: Result: 以下のように表示されればOKです

# ![2022-05-23_00h06_42.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/9509f6bf-decf-e2d8-3f6c-c0204bfd6dc1.png)

# 画面下にスライダーが表示されましたが、これはブラウザビューポートのスライダーであって、まだカルーセルのスライドではありません。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/ab96f3c.patch # overflow-x: auto
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# 画像のすぐ下、つまりカルーセルの内部にスライダーが移動しました。

# <iframe width="640" height="360" src="https://www.youtube.com/embed/yREnYC_c7Ug" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# カルーセルのスライドが中途半端な位置で止まっています。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/bbf2ab3.patch # scrollSnapType and scrollSnapAlign
# ```

# :white_check_mark: Result: 以下のように表示されればOKです

# <iframe width="640" height="360" src="https://www.youtube.com/embed/x_XQ34Ia8j4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

# 各画像全体が表示される位置でスライドが止まるようになりました。
