#> spike:place/
#
# スパイクの設置処理。タイマーなど
#
# @within function spike:

execute unless entity @s[tag=PlacingSpike] run function spike:place/setup

execute store result bossbar valorant:spike value run scoreboard players add @s Spike.Sneak 1

execute if score @s Spike.Sneak = $Max Spike run function spike:place/done