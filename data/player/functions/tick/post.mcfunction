#> player:tick/post
#
# プレイヤー後Tick処理
#
# @within function core:tick/

# イベントハンドラー
    execute if score @s DeathEvent matches 1.. run function player:handler/death

# プレイヤーUI
    title @s actionbar ["",{"translate": "space.16","font": "space"},{"score": {"name": "@s","objective": "Health"},"font": "ui"},{"translate": "space.256","font": "space"}]
    