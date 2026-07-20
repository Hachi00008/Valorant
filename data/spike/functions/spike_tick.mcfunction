#> spike:spike_tick
#
# スパイクのTick処理
# これの実行対象はSpikeのタグが付いているエンティティ
#
# @within function game_core:game_tick/

execute unless entity @a[distance=..2]