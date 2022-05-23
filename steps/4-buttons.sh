#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 4. カルーセルの動作を制御するボタン

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/23f1c64.patch # Add CarouselControl
# ```

# :white_check_mark: Result: `CarouselContainer` の更に外側に `CarouselControl` というコンポーネントを作成しました。

# 新しく作成した `CarouselControl` の中にボタンを配置していきます。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/93e3816.patch # add barebone buttons
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。小さくてわかりにくいですが、ボタンが画像の左下に配置されました。

# ![2022-05-23_00h36_21.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/8ddb9750-85ac-f6c7-47ed-bd8b28dbde7b.png)


