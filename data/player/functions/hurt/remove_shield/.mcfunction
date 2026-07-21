#> player:hurt/remove_shield
#
# シールドを剥がす処理
#
# @within function player:hurt/

# ダメージがシールド以下の場合
    execute if score @s HurtTakenDamage <= @s Shield run function player:hurt/remove_shield/below

# ダメージがシールドを上回っていたとき
    execute if score @s HurtTakenDamage > @s Shield run function player:hurt/remove_shield/above