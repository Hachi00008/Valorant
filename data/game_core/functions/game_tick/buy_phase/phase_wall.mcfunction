#> game_core:game_tick/buy_phase/phase_wall
#
# 購入フェーズ時のバリアを展開
#
# @within function game_core:game_tick/buy_phase/

# パーティクル
    particle flame ^ ^ ^ ^ ^10000000 ^ 0.00000005 0 normal @a
    particle flame ^-0.3 ^ ^ ^ ^10000000 ^ 0.00000005 0 normal @a
    particle flame ^0.3 ^ ^ ^ ^10000000 ^ 0.00000005 0 normal @a

# バリアブロック
    fill ~ ~ ~ ~ ~2 ~ barrier