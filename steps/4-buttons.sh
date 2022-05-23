#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 4. カルーセルの動作を制御するボタン

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/23f1c64.patch # Add CarouselControl
# ```

# :white_check_mark: Result: `CarouselContainer` の更に外側に `CarouselControl` というコンポーネントを作成しました。

# ここからカルーセルをスライドさせるためのボタンを配置しますが、一気に実装してしまうとコードの差分が大きくなって、何がどう作用しているのか分かりづらくなってしまいます。そこでまずは、新しく作成した `CarouselControl` の中に何も動作しないボタンを配置します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/93e3816.patch # add barebone buttons
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-05-23_00h36_21.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/8ddb9750-85ac-f6c7-47ed-bd8b28dbde7b.png)

# 小さくてわかりにくいですが、ボタンが画像の左下に配置されました。

# 次に、ボタンを使わずにカルーセルを動かす部分だけを実装します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/d52f9d5.patch # move the carousel slider to the 2nd item
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-05-24_00h07_38.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/d708dd49-e990-ca16-df47-5416eb28d535.png)

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/118cca8.patch # move the carousel slider to the 3rd item
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-05-24_00h08_44.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/c10672b5-728a-4a9b-9066-f5b4e2f4780d.png)

# 次にボタンによって、CarouselControl のstateを更新しましょう。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/2103e9d.patch # snap state
# ```

# いよいよ、ボタンによってカルーセルのスライドを実現します。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/447073a.patch # buttons to work
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# <iframe width="640" height="360" src="https://www.youtube.com/embed/0W8s6XaCcgg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# ボタンの動作を確認できたので、今度はその見た目を整えましょう。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/b5d8ceb.patch # centering buttons
git apply patches/f2d0df6.patch # decorate buttons
git apply patches/9dc0fda.patch # hide the scrollbar
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-05-24_00h17_11.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/7748a1dd-8a5a-33c6-fb0b-30afcc907e34.png)