#> game_core:game_tick/battle_phase/
#
# 戦闘フェーズ時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute unless entity @e[type=block_display,tag=Spike] if score $Time Timer matches 1.. run scoreboard players remove $Time Timer 1