#> spike:defuse/
#
# スパイクの解除処理。タイマーなど
#
# @within function spike:player_tick

execute store result bossbar valorant:spike value run scoreboard players add $Defuse Spike 1

execute if score $Defuse Spike = $DefuseMax Spike run function spike:defuse/done