#> game_core:game_tick/buy_phase/finish
#
# 購入フェーズの終了処理
#
# @within function game_core:game_tick/buy_phase/

# タグを削除
    tag @a remove Shop_Phase

# ショップ削除
    execute at @e[type=interaction,tag=pss_shop] run setblock ~ ~ ~ air
    kill @e[type=interaction,tag=pss_shop]

# バリア解除
    execute at @e[tag=Phase_Wall] run fill ~ ~ ~ ~ ~2 ~ air replace barrier

# フェーズ変更
    data modify storage game: Phase set value "Battle"
    scoreboard players set $Time Timer 2000