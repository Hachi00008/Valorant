#> game_core:game_tick/
#
# ゲーム中のTick処理
#
# @within function core:tick/

# 購入フェーズ処理
    execute if data storage game: {Phase:"Buy"} run function game_core:game_tick/buy_phase/