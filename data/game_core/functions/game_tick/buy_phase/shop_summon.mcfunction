#> game_core:game_tick/buy_phase/shop_summon
#
# ショップの設置
#
# @within function game_core:game_tick/buy_phase/

# 判定用のインタラクションを召喚
    summon interaction ~ ~1 ~ {Tags:["pss_shop","pss_shop:buy_phase"]}