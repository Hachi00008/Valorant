#> player:hurt/
#
# プレイヤーがダメージを喰らった際の処理
#
# @within advancements player:player_hurt

# 死んだ時の処理
    execute if score @s DeathEvent matches 1.. run function player:hurt/death

# リセット
    execute if score @s TakenDamage matches 100.. run scoreboard players set @s TakenDamage 0
    scoreboard players set @s AttackerWeaponDamage 0
    advancement revoke @s only player:player_hurt