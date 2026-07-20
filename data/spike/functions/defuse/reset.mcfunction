#> spike:place/reset
#
# スパイク解除処理のタグなどの削除
#
# @within function spike:defuse/cancel
# @within function spike:defuse/done

execute as @a[tag=DefusingSpike] run function spike:defuse/attribute/reset
tag @e remove Defusing

bossbar set valorant:spike value 0
bossbar set valorant:spike visible false
