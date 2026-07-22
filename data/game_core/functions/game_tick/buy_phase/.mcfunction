#> game_core:game_tick/buy_phase/
#
# 購入フェーズ時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute if score $Time Timer matches 1.. run scoreboard players remove $Time Timer 1

# バリア作成
    execute if score $Time Timer matches 1.. at @e[tag=Phase_Wall] run function game_core:game_tick/buy_phase/phase_wall

# 初期化処理
    execute if score $Time Timer matches 599 run function game_core:game_tick/buy_phase/init

# タグを削除
    execute if score $Time Timer matches 0 run function game_core:game_tick/buy_phase/finish

# タイマー描画処理(一番最後に実行)
    function game_core:game_tick/draw_timer