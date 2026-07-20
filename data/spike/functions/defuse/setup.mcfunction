#> spike:defuse/setup
#
# スパイクを解除し始めた際の処理。
# PlacingSpike タグで検知しています。
#
# @within function spike:spike_tick

execute unless score $Defuse Spike = $DefuseHalf Spike run scoreboard players set $Defuse Spike 0

tellraw @a [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクを解除します。","color": "white"}]

tag @s add Defusing
playsound block.note_block.chime master @a ~ ~ ~ 5 1 1

execute as @a[distance=..2, limit=1] run function spike:defuse/attribute/set

bossbar set valorant:spike style notched_6
bossbar set valorant:spike name "スパイクを解除しています..."
execute store result bossbar valorant:spike max run scoreboard players get $DefuseMax Spike
execute store result bossbar valorant:spike value run scoreboard players get $Defuse Spike

# TODO: ここは味方全員見れるようにするべきだけど、まだチーム関連ができてないらしいのでひとまず @a
bossbar set valorant:spike players @a
bossbar set valorant:spike visible true
