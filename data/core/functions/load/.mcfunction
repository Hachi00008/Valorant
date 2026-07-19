#> core:load/
#
# ロード時の処理
#
# @within tag/function minecraft:load

# データパックが完成済みであるかどうかを定義
# trueにするとcore:load/onceが一度しか読み込まれない
    data modify storage global: IsCompleted set value false

# 最初だけ実行
    execute if data storage global: {IsCompleted:true} unless data storage global: FrameworkVersion run function core:load/once
    execute unless data storage global: {IsCompleted:true} run function core:load/once