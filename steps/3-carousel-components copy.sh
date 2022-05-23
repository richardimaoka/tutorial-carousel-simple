#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 3. カルーセルのコンポーネント化

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/78f448e.patch # CarouselItem component
# ```

# :white_check_mark: Result: `<img>` を切り出して `CarouselItem` というコンポーネントを作成しました。

# :large_orange_diamond: Action: 以下のコマンドを入力してください。

# ```shell
git apply patches/c72d5bc.patch # CarouselContainer component
# ```

# :white_check_mark: Result: `CarouselItem` の外側にあたる `CarouselContainer` というコンポーネントが新規作成されました。

