#> spike:place/reset
#
# スパイク設置処理のタグなどの削除
#
# @within function spike:

tag @s remove PlacingSpike
scoreboard players reset @s Spike.Sneak
bossbar set valorant:spike value 0
bossbar set valorant:spike visible false

attribute @s generic.movement_speed base set 0.1
effect clear @s jump_boost
