#> player:tick/post
#
# プレイヤー後Tick処理
#
# @within function core:tick/

# イベントハンドラー
    execute if score @s DeathEvent matches 1.. run function player:handler/death

# ショップ
    execute if entity @s[tag=Shop_Phase] run function shop:menu/