#> game_core:game_tick/buy_phase/
#
# 購入フェーズ時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute if score $time Timer matches 1.. run scoreboard players remove $time Timer 1

# ショップの設置
    execute if score $time Timer matches 1 at @e[type=armor_stand,tag=Shop_Pos] run function game_core:game_tick/buy_phase/shop_summon