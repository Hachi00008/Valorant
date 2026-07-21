#> player:hurt/remove_shield/above
#
# シールドが数値以上の時の処理
#
# @within function player:hurt/remove_shield/

# スコアを減らす
    scoreboard players operation @s HurtTakenDamage -= @s Shield
    scoreboard players set @s Shield 0