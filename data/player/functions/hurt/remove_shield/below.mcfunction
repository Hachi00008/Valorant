#> player:hurt/remove_shield/below
#
# シールドが数値以下の時の処理
#
# @within function player:hurt/remove_shield/

# スコアを減らす
    scoreboard players operation @s Shield -= @s HurtTakenDamage
    scoreboard players set @s HurtTakenDamage 0