#> game_core:game_tick/buy_phase/init
#
# 購入フェーズの初期化処理
#
# @within function game_core:game_tick/buy_phase/

# ショップの設置
    execute at @e[type=armor_stand,tag=Shop_Pos] run function game_core:game_tick/buy_phase/shop_summon

# タグ付与
    tag @a add Shop_Phase
