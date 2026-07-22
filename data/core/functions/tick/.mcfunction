#> core:tick/
#
# 全体tick処理
#
# @within tag/function minecraft:tick

# プレイヤー処理
    execute as @a at @s run function player:tick/

# プレイヤー後Tick処理
    execute as @a at @s run function player:tick/post

# ゲーム中のTick処理
    execute if data storage game: {state:"Playing"} run function game_core:game_tick/
    execute as @e[tag=Spike] at @s run function spike:spike_tick

    clear AZer0_ lrtactical:throwable
    clear imomodazo lrtactical:throwable