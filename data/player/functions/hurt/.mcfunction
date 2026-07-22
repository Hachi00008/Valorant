#> player:hurt/
#
# プレイヤーがダメージを喰らった際の処理
#
# @within advancements player:player_hurt

# 回復
    effect give @s instant_health 1 50 true
# ダメージ処理
    scoreboard players operation @s HurtTakenDamage = @s TakenDamage
    scoreboard players operation @s HurtTakenDamage /= #10 Constant
    scoreboard players operation @s HurtTakenDamage *= #5 Constant

    # シールドの処理
        execute if score @s Shield matches 1.. run function player:hurt/remove_shield/

    # 体力の処理
        execute if score @s HurtTakenDamage matches 1.. run scoreboard players operation @s Health -= @s HurtTakenDamage
        
# 死んだ時の処理
    execute if score @s Health matches ..0 run function player:hurt/death

# ダメージ処理
    execute if score @s Health matches ..0 on attacker run damage @a[distance=..0.1,limit=1] 2000 lib:gun_damage by @s

# 仮
    execute if score @s Health matches ..0 run gamemode spectator @s

# リセット
    execute if score @s TakenDamage matches 70.. run scoreboard players set @s TakenDamage 0
    scoreboard players set @s AttackerWeaponDamage 0
    advancement revoke @s only player:player_hurt