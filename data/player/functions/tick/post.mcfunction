#> player:tick/post
#
# プレイヤー後Tick処理
#
# @within function core:tick/

# イベントハンドラー
    execute if score @s DeathEvent matches 1.. run function player:handler/death