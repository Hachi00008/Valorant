#> spike:place/reset
#
# スパイク処理のキャンセル
#
# @within function spike:player_tick

say a

function spike:defuse/reset

execute if score $Defuse Spike >= $DefuseHalf Spike run scoreboard players operation $Defuse Spike = $DefuseHalf Spike
execute if score $Defuse Spike < $DefuseHalf Spike run scoreboard players set $Defuse Spike 0

# ログ
tellraw @s [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクの解除をキャンセルしました。","color": "white"}]
