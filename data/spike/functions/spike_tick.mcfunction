#> spike:spike_tick
#
# スパイクのTick処理
# これの実行対象はSpikeのタグが付いているエンティティ
#
# @within function game_core:game_tick/

# プレイヤーが近くにいない限り発動しない
execute unless entity @a[distance=..2, predicate=lib:is_sneaking] run return 0

execute if entity @s[tag=!Defusing] run function spike:defuse/setup

function spike:defuse/