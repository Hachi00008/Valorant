#> player:handler/death
#
# 死亡時処理
#
# @within function player:tick/post

# タグ付与
    tag @s add Death

# スコアリセット
    scoreboard players reset @s DeathEvent