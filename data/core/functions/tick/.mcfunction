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
    