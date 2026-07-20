#> spike:timer/playsound
#
# スパイクのタイマー、効果音処理
#
# @within function spike:timer/

scoreboard players add $SFXTick Spike 1

execute unless score $SFXTick Spike = $SFXTime Spike run return 0

scoreboard players set $SFXTick Spike 0

playsound entity.experience_orb.pickup master @a ~ ~ ~ 5 1 1