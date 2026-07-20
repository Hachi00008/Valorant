#> spike:player_tick
#
# スパイクのプレイヤーTick処理
#
# @within function game_core:game_tick/

execute unless predicate lib:has_spike if entity @s[tag=PlacingSpike] run function spike:place/cancel
execute if predicate lib:has_spike run function spike:place/
